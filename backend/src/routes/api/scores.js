const express = require('express');
const db = require('../../db');
const { authRequired } = require('../../middleware/auth');

const router = express.Router();

router.get('/', authRequired, (req, res) => {
  const rows = db
    .prepare(
      `SELECT s.*, e.title AS exam_title, e.pass_score
       FROM exam_submissions s
       JOIN exams e ON e.id = s.exam_id
       WHERE s.user_id = ?
       ORDER BY s.submitted_at ASC`
    )
    .all(req.userId);

  res.json({
    scores: rows.map((r) => ({
      id: r.id,
      examId: r.exam_id,
      examTitle: r.exam_title,
      score: r.score,
      passed: !!r.passed,
      passScore: r.pass_score,
      submittedAt: r.submitted_at,
    })),
  });
});

module.exports = router;
