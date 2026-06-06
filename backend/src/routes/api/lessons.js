const express = require('express');
const db = require('../../db');
const { authRequired } = require('../../middleware/auth');
const { isEnrolled } = require('../../seed');

const router = express.Router();

router.get('/:id', authRequired, (req, res) => {
  const lesson = db.prepare('SELECT * FROM lessons WHERE id = ?').get(req.params.id);
  if (!lesson) return res.status(404).json({ error: '课时不存在', code: 404 });

  if (!isEnrolled(req.userId, lesson.course_id)) {
    return res.status(403).json({
      error: '未报名该课程，请先完成报名',
      code: 403,
      courseId: lesson.course_id,
    });
  }

  res.json({
    lesson: {
      id: lesson.id,
      courseId: lesson.course_id,
      title: lesson.title,
      sortOrder: lesson.sort_order,
      videoUrl: lesson.video_url,
      contentMd: lesson.content_md,
      durationMinutes: lesson.duration_minutes,
    },
  });
});

module.exports = router;
