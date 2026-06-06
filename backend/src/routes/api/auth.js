const express = require('express');
const { v4: uuidv4 } = require('uuid');
const db = require('../../db');
const { authRequired } = require('../../middleware/auth');

const router = express.Router();

function ensureUser(phone, nickname) {
  let user = db.prepare('SELECT * FROM users WHERE phone = ?').get(phone);
  if (!user) {
    const id = uuidv4();
    db.prepare('INSERT INTO users (id, phone, nickname) VALUES (?, ?, ?)').run(
      id,
      phone,
      nickname || `学员${phone.slice(-4)}`
    );
    user = db.prepare('SELECT * FROM users WHERE id = ?').get(id);
  }
  return user;
}

router.post('/login', (req, res) => {
  const { phone, password } = req.body || {};
  if (!phone) return res.status(400).json({ error: '请输入手机号', code: 400 });
  if (!password || String(password) !== '123456') {
    return res.status(400).json({ error: '密码错误（演示密码 123456）', code: 400 });
  }
  const user = ensureUser(String(phone).trim());
  const token = uuidv4();
  db.prepare('INSERT INTO sessions (token, user_id) VALUES (?, ?)').run(token, user.id);
  res.json({
    token,
    user: { id: user.id, phone: user.phone, nickname: user.nickname },
  });
});

router.post('/logout', authRequired, (req, res) => {
  db.prepare('DELETE FROM sessions WHERE token = ?').run(req.token);
  res.json({ ok: true });
});

router.get('/me', authRequired, (req, res) => {
  res.json({ user: req.user });
});

module.exports = router;
