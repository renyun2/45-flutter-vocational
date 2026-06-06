const express = require('express');
const { v4: uuidv4 } = require('uuid');
const db = require('../../db');
const { authRequired } = require('../../middleware/auth');
const { isEnrolled } = require('../../seed');

const router = express.Router();

router.get('/', authRequired, (req, res) => {
  const { courseId } = req.query;
  let sql = `
    SELECT a.*, c.title AS course_title,
      (SELECT submission_url FROM assignment_submissions s
       WHERE s.assignment_id = a.id AND s.user_id = ?) AS my_submission
    FROM assignments a
    JOIN courses c ON c.id = a.course_id
    WHERE 1=1
  `;
  const params = [req.userId];
  if (courseId) {
    sql += ' AND a.course_id = ?';
    params.push(courseId);
  }
  sql += ' ORDER BY a.due_date ASC';
  const assignments = db.prepare(sql).all(...params).map(formatAssignment);
  res.json({ assignments });
});

router.post('/', authRequired, (req, res) => {
  const { assignmentId, submissionUrl } = req.body || {};
  if (!assignmentId || !submissionUrl) {
    return res.status(400).json({ error: '请填写作业链接', code: 400 });
  }

  const assignment = db.prepare('SELECT * FROM assignments WHERE id = ?').get(assignmentId);
  if (!assignment) return res.status(404).json({ error: '作业不存在', code: 404 });
  if (!isEnrolled(req.userId, assignment.course_id)) {
    return res.status(403).json({ error: '未报名该课程', code: 403 });
  }

  const existing = db
    .prepare('SELECT id FROM assignment_submissions WHERE assignment_id = ? AND user_id = ?')
    .get(assignmentId, req.userId);

  if (existing) {
    db.prepare('UPDATE assignment_submissions SET submission_url = ?, submitted_at = datetime(\'now\') WHERE id = ?')
      .run(String(submissionUrl).trim(), existing.id);
    return res.json({ submission: { id: existing.id, assignmentId, submissionUrl } });
  }

  const id = uuidv4();
  db.prepare(
    `INSERT INTO assignment_submissions (id, assignment_id, user_id, submission_url)
     VALUES (?, ?, ?, ?)`
  ).run(id, assignmentId, req.userId, String(submissionUrl).trim());
  res.json({ submission: { id, assignmentId, submissionUrl } });
});

function formatAssignment(row) {
  return {
    id: row.id,
    courseId: row.course_id,
    courseTitle: row.course_title,
    title: row.title,
    description: row.description,
    dueDate: row.due_date,
    submitted: !!row.my_submission,
    submissionUrl: row.my_submission || null,
  };
}

module.exports = router;
