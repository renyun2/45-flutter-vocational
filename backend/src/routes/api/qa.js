const express = require('express');
const { v4: uuidv4 } = require('uuid');
const db = require('../../db');
const { authRequired } = require('../../middleware/auth');

const router = express.Router();

router.get('/', authRequired, (req, res) => {
  const threads = db
    .prepare(
      `SELECT q.*, c.title AS course_title FROM qa_threads q
       LEFT JOIN courses c ON c.id = q.course_id
       WHERE q.user_id = ?
       ORDER BY q.created_at DESC`
    )
    .all(req.userId);
  res.json({
    threads: threads.map((t) => ({
      id: t.id,
      courseId: t.course_id,
      courseTitle: t.course_title,
      question: t.question,
      answer: t.answer,
      status: t.status,
      createdAt: t.created_at,
      answeredAt: t.answered_at,
    })),
  });
});

router.post('/', authRequired, (req, res) => {
  const { question, courseId } = req.body || {};
  if (!question || !String(question).trim()) {
    return res.status(400).json({ error: '请输入问题', code: 400 });
  }
  const id = uuidv4();
  db.prepare(
    `INSERT INTO qa_threads (id, user_id, course_id, question, status)
     VALUES (?, ?, ?, ?, 'pending')`
  ).run(id, req.userId, courseId || null, String(question).trim());
  res.json({ thread: { id, question, status: 'pending' } });
});

module.exports = router;
