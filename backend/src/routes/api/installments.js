const express = require('express');
const db = require('../../db');
const { authRequired } = require('../../middleware/auth');

const router = express.Router();

router.get('/', authRequired, (req, res) => {
  const rows = db
    .prepare(
      `SELECT i.*, c.title AS course_title, e.course_id
       FROM installments i
       JOIN enrollments e ON e.id = i.enrollment_id
       JOIN courses c ON c.id = e.course_id
       WHERE e.user_id = ?
       ORDER BY i.due_date ASC, i.period_no ASC`
    )
    .all(req.userId);

  res.json({
    installments: rows.map((r) => ({
      id: r.id,
      enrollmentId: r.enrollment_id,
      courseId: r.course_id,
      courseTitle: r.course_title,
      periodNo: r.period_no,
      amount: r.amount,
      dueDate: r.due_date,
      status: r.status,
      paidAt: r.paid_at,
    })),
  });
});

module.exports = router;
