const express = require('express');
const { v4: uuidv4 } = require('uuid');
const db = require('../../db');
const { authRequired } = require('../../middleware/auth');

const router = express.Router();

router.get('/', authRequired, (req, res) => {
  const rows = db
    .prepare(
      `SELECT e.*, c.title AS course_title, c.category, b.start_date, b.end_date, b.schedule
       FROM enrollments e
       JOIN courses c ON c.id = e.course_id
       JOIN batches b ON b.id = e.batch_id
       WHERE e.user_id = ?
       ORDER BY e.created_at DESC`
    )
    .all(req.userId);
  res.json({
    enrollments: rows.map((r) => ({
      id: r.id,
      courseId: r.course_id,
      courseTitle: r.course_title,
      category: r.category,
      batchId: r.batch_id,
      startDate: r.start_date,
      endDate: r.end_date,
      schedule: r.schedule,
      installmentPlan: r.installment_plan,
      status: r.status,
      createdAt: r.created_at,
    })),
  });
});

router.post('/', authRequired, (req, res) => {
  const { courseId, batchId, installmentPlan } = req.body || {};
  if (!courseId || !batchId) {
    return res.status(400).json({ error: '请选择课程与班级', code: 400 });
  }

  const course = db.prepare('SELECT * FROM courses WHERE id = ?').get(courseId);
  if (!course) return res.status(404).json({ error: '课程不存在', code: 404 });

  const batch = db.prepare('SELECT * FROM batches WHERE id = ? AND course_id = ?').get(batchId, courseId);
  if (!batch) return res.status(404).json({ error: '班级不存在', code: 404 });
  if (batch.enrolled_count >= batch.capacity) {
    return res.status(409).json({ error: '班级已满', code: 409 });
  }

  const existing = db
    .prepare('SELECT id FROM enrollments WHERE user_id = ? AND course_id = ?')
    .get(req.userId, courseId);
  if (existing) return res.status(409).json({ error: '已报名该课程', code: 409 });

  const plan = String(installmentPlan || 'full');
  const enrollmentId = uuidv4();
  db.prepare(
    `INSERT INTO enrollments (id, user_id, course_id, batch_id, installment_plan, status)
     VALUES (?, ?, ?, ?, ?, 'active')`
  ).run(enrollmentId, req.userId, courseId, batchId, plan);

  db.prepare('UPDATE batches SET enrolled_count = enrolled_count + 1 WHERE id = ?').run(batchId);

  createInstallments(enrollmentId, course.price, plan);

  res.json({
    enrollment: {
      id: enrollmentId,
      courseId,
      batchId,
      installmentPlan: plan,
      status: 'active',
    },
  });
});

function createInstallments(enrollmentId, price, plan) {
  if (plan === 'full') {
    db.prepare(
      `INSERT INTO installments (id, enrollment_id, period_no, amount, due_date, status, paid_at)
       VALUES (?, ?, 1, ?, date('now'), 'paid', datetime('now'))`
    ).run(uuidv4(), enrollmentId, price);
    return;
  }
  const periods = plan === '6' ? 6 : plan === '3' ? 3 : 1;
  const amount = Math.round((price / periods) * 100) / 100;
  for (let i = 1; i <= periods; i++) {
    const due = new Date();
    due.setMonth(due.getMonth() + i - 1);
    db.prepare(
      `INSERT INTO installments (id, enrollment_id, period_no, amount, due_date, status, paid_at)
       VALUES (?, ?, ?, ?, ?, ?, ?)`
    ).run(
      uuidv4(),
      enrollmentId,
      i,
      amount,
      due.toISOString().slice(0, 10),
      i === 1 ? 'paid' : 'pending',
      i === 1 ? new Date().toISOString() : null
    );
  }
}

module.exports = router;
