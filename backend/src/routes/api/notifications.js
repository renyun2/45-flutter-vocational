const express = require('express');
const db = require('../../db');
const { authRequired } = require('../../middleware/auth');

const router = express.Router();

router.get('/', authRequired, (req, res) => {
  const rows = db
    .prepare('SELECT * FROM notifications WHERE user_id = ? ORDER BY created_at DESC')
    .all(req.userId);
  res.json({
    notifications: rows.map((n) => ({
      id: n.id,
      title: n.title,
      body: n.body,
      type: n.type,
      read: !!n.read_flag,
      createdAt: n.created_at,
    })),
  });
});

router.post('/:id/read', authRequired, (req, res) => {
  db.prepare('UPDATE notifications SET read_flag = 1 WHERE id = ? AND user_id = ?').run(
    req.params.id,
    req.userId
  );
  res.json({ ok: true });
});

module.exports = router;
