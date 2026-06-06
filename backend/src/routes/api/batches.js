const express = require('express');
const db = require('../../db');

const router = express.Router();

router.get('/', (req, res) => {
  const { courseId } = req.query;
  let sql = `
    SELECT b.*, c.title AS course_title
    FROM batches b
    JOIN courses c ON c.id = b.course_id
    WHERE 1=1
  `;
  const params = [];
  if (courseId) {
    sql += ' AND b.course_id = ?';
    params.push(courseId);
  }
  sql += ' ORDER BY b.start_date ASC';
  const batches = db.prepare(sql).all(...params).map(formatBatch);
  res.json({ batches });
});

function formatBatch(row) {
  return {
    id: row.id,
    courseId: row.course_id,
    courseTitle: row.course_title,
    startDate: row.start_date,
    endDate: row.end_date,
    schedule: row.schedule,
    capacity: row.capacity,
    enrolledCount: row.enrolled_count,
    remaining: row.capacity - row.enrolled_count,
  };
}

module.exports = router;
