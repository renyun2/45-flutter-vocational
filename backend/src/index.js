const express = require('express');
const cors = require('cors');
const { seed } = require('./seed');

const authRoutes = require('./routes/api/auth');
const coursesRoutes = require('./routes/api/courses');
const batchesRoutes = require('./routes/api/batches');
const enrollmentsRoutes = require('./routes/api/enrollments');
const lessonsRoutes = require('./routes/api/lessons');
const assignmentsRoutes = require('./routes/api/assignments');
const examsRoutes = require('./routes/api/exams');
const scoresRoutes = require('./routes/api/scores');
const certificatesRoutes = require('./routes/api/certificates');
const jobsRoutes = require('./routes/api/jobs');
const qaRoutes = require('./routes/api/qa');
const installmentsRoutes = require('./routes/api/installments');
const notificationsRoutes = require('./routes/api/notifications');

seed();

const app = express();
const PORT = process.env.PORT || 3032;

app.use(cors({ origin: true }));
app.use(express.json());

app.get('/health', (_req, res) => res.json({ ok: true, service: 'vocational-training' }));

app.use('/api/auth', authRoutes);
app.use('/api/courses', coursesRoutes);
app.use('/api/batches', batchesRoutes);
app.use('/api/enrollments', enrollmentsRoutes);
app.use('/api/lessons', lessonsRoutes);
app.use('/api/assignments', assignmentsRoutes);
app.use('/api/exams', examsRoutes);
app.use('/api/scores', scoresRoutes);
app.use('/api/certificates', certificatesRoutes);
app.use('/api/jobs', jobsRoutes);
app.use('/api/qa', qaRoutes);
app.use('/api/installments', installmentsRoutes);
app.use('/api/notifications', notificationsRoutes);

if (require.main === module) {
  app.listen(PORT, () => {
    console.log(`Vocational training backend running at http://localhost:${PORT}`);
    console.log(`API base: http://localhost:${PORT}/api`);
  });
}

module.exports = app;
