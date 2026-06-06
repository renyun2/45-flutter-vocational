const express = require('express');
const { v4: uuidv4 } = require('uuid');
const db = require('../../db');
const { authRequired } = require('../../middleware/auth');

const router = express.Router();

router.get('/', authRequired, (_req, res) => {
  const exams = db.prepare('SELECT id, title, course_id, duration_minutes, pass_score FROM exams ORDER BY title').all();
  res.json({
    exams: exams.map((e) => ({
      id: e.id,
      title: e.title,
      courseId: e.course_id,
      durationMinutes: e.duration_minutes,
      passScore: e.pass_score,
    })),
  });
});

router.get('/:id', authRequired, (req, res) => {
  const exam = db.prepare('SELECT * FROM exams WHERE id = ?').get(req.params.id);
  if (!exam) return res.status(404).json({ error: '模考不存在', code: 404 });

  const today = new Date().toISOString().slice(0, 10);
  const todaySub = db
    .prepare(
      `SELECT id FROM exam_submissions
       WHERE exam_id = ? AND user_id = ? AND date(submitted_at) = date(?)`
    )
    .get(exam.id, req.userId, today);

  const questions = JSON.parse(exam.questions || '[]').map(({ answer, ...q }) => q);

  res.json({
    exam: {
      id: exam.id,
      title: exam.title,
      courseId: exam.course_id,
      durationMinutes: exam.duration_minutes,
      passScore: exam.pass_score,
      questions,
      alreadyTakenToday: !!todaySub,
    },
  });
});

router.post('/:id/submit', authRequired, (req, res) => {
  const exam = db.prepare('SELECT * FROM exams WHERE id = ?').get(req.params.id);
  if (!exam) return res.status(404).json({ error: '模考不存在', code: 404 });

  const today = new Date().toISOString().slice(0, 10);
  const todaySub = db
    .prepare(
      `SELECT id FROM exam_submissions
       WHERE exam_id = ? AND user_id = ? AND date(submitted_at) = date(?)`
    )
    .get(exam.id, req.userId, today);
  if (todaySub) {
    return res.status(429).json({ error: '今日已参加过该模考，请明天再试', code: 429 });
  }

  const answers = req.body?.answers || {};
  const questions = JSON.parse(exam.questions || '[]');
  let correct = 0;
  for (const q of questions) {
    if (Number(answers[q.id]) === q.answer) correct++;
  }
  const score = questions.length ? Math.round((correct / questions.length) * 100) : 0;
  const passed = score >= exam.pass_score ? 1 : 0;

  const submissionId = uuidv4();
  db.prepare(
    `INSERT INTO exam_submissions (id, exam_id, user_id, answers, score, passed)
     VALUES (?, ?, ?, ?, ?, ?)`
  ).run(submissionId, exam.id, req.userId, JSON.stringify(answers), score, passed);

  let certificate = null;
  if (passed) {
    const certNo = `VOC-${Date.now().toString(36).toUpperCase()}-${req.userId.slice(0, 4).toUpperCase()}`;
    const course = exam.course_id
      ? db.prepare('SELECT title FROM courses WHERE id = ?').get(exam.course_id)
      : null;
    const certId = uuidv4();
    db.prepare(
      `INSERT INTO certificates (id, user_id, exam_id, cert_no, course_name)
       VALUES (?, ?, ?, ?, ?)`
    ).run(certId, req.userId, exam.id, certNo, course?.title || exam.title);
    certificate = { id: certId, certNo, courseName: course?.title || exam.title };
  }

  res.json({
    submission: {
      id: submissionId,
      examId: exam.id,
      score,
      passed: !!passed,
      passScore: exam.pass_score,
      totalQuestions: questions.length,
      correctCount: correct,
    },
    certificate,
  });
});

module.exports = router;
