const express = require('express');
const db = require('../../db');
const { authRequired } = require('../../middleware/auth');

const router = express.Router();

router.get('/verify', (req, res) => {
  const { certNo } = req.query;
  if (!certNo) return res.status(400).json({ error: '请输入证书编号', code: 400 });

  const cert = db
    .prepare(
      `SELECT c.*, u.nickname FROM certificates c
       JOIN users u ON u.id = c.user_id
       WHERE c.cert_no = ?`
    )
    .get(String(certNo).trim());

  if (!cert) return res.status(404).json({ error: '证书编号无效', code: 404 });

  res.json({
    valid: true,
    certificate: {
      certNo: cert.cert_no,
      courseName: cert.course_name,
      holderName: cert.nickname,
      issuedAt: cert.issued_at,
    },
  });
});

router.get('/', authRequired, (req, res) => {
  const certs = db
    .prepare('SELECT * FROM certificates WHERE user_id = ? ORDER BY issued_at DESC')
    .all(req.userId);
  res.json({
    certificates: certs.map((c) => ({
      id: c.id,
      certNo: c.cert_no,
      courseName: c.course_name,
      examId: c.exam_id,
      issuedAt: c.issued_at,
    })),
  });
});

module.exports = router;
