const express = require('express');
const db = require('../../db');

const router = express.Router();

router.get('/', (req, res) => {
  const { category, difficulty } = req.query;
  let sql = 'SELECT * FROM courses WHERE 1=1';
  const params = [];
  if (category) {
    sql += ' AND category = ?';
    params.push(category);
  }
  if (difficulty) {
    sql += ' AND difficulty = ?';
    params.push(difficulty);
  }
  sql += ' ORDER BY hot_score DESC';
  const courses = db.prepare(sql).all(...params).map(formatCourse);
  res.json({ courses });
});

router.get('/:id/lessons', (req, res) => {
  const course = db.prepare('SELECT id FROM courses WHERE id = ?').get(req.params.id);
  if (!course) return res.status(404).json({ error: '课程不存在', code: 404 });
  const lessons = db
    .prepare('SELECT id, course_id, title, sort_order, duration_minutes FROM lessons WHERE course_id = ? ORDER BY sort_order')
    .all(req.params.id);
  res.json({
    lessons: lessons.map((l) => ({
      id: l.id,
      courseId: l.course_id,
      title: l.title,
      sortOrder: l.sort_order,
      durationMinutes: l.duration_minutes,
    })),
  });
});

router.get('/:id', (req, res) => {
  const row = db.prepare('SELECT * FROM courses WHERE id = ?').get(req.params.id);
  if (!row) return res.status(404).json({ error: '课程不存在', code: 404 });
  res.json({ course: formatCourse(row) });
});

function formatCourse(row) {
  return {
    id: row.id,
    title: row.title,
    category: row.category,
    difficulty: row.difficulty,
    description: row.description,
    price: row.price,
    trialVideoUrl: row.trial_video_url,
    outline: JSON.parse(row.outline || '[]'),
    instructor: row.instructor,
    hotScore: row.hot_score,
  };
}

module.exports = router;
