const express = require('express');
const db = require('../../db');

const router = express.Router();

router.get('/', (req, res) => {
  const { category, city } = req.query;
  let sql = 'SELECT * FROM jobs WHERE 1=1';
  const params = [];
  if (category) {
    sql += ' AND category = ?';
    params.push(category);
  }
  if (city) {
    sql += ' AND city = ?';
    params.push(city);
  }
  sql += ' ORDER BY title ASC';
  const jobs = db.prepare(sql).all(...params).map(formatJob);
  res.json({ jobs });
});

router.get('/:id', (req, res) => {
  const row = db.prepare('SELECT * FROM jobs WHERE id = ?').get(req.params.id);
  if (!row) return res.status(404).json({ error: '岗位不存在', code: 404 });
  res.json({ job: formatJob(row) });
});

function formatJob(row) {
  return {
    id: row.id,
    title: row.title,
    company: row.company,
    salaryRange: row.salary_range,
    city: row.city,
    requirements: row.requirements,
    description: row.description,
    category: row.category,
  };
}

module.exports = router;
