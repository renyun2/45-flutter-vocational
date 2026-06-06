const { test, before, after } = require('node:test');
const assert = require('node:assert/strict');
const fs = require('fs');
const path = require('path');

const dbPath = path.join(__dirname, '..', 'data', 'vocational-test.db');

async function callApp(app, method, url, { token, body } = {}) {
  return new Promise((resolve, reject) => {
    const server = app.listen(0, () => {
      const { port } = server.address();
      const http = require('http');
      const payload = body ? JSON.stringify(body) : null;
      const req = http.request(
        {
          hostname: '127.0.0.1',
          port,
          path: url,
          method,
          headers: {
            'Content-Type': 'application/json',
            ...(token ? { Authorization: `Bearer ${token}` } : {}),
            ...(payload ? { 'Content-Length': Buffer.byteLength(payload) } : {}),
          },
        },
        (res) => {
          let raw = '';
          res.on('data', (c) => (raw += c));
          res.on('end', () => {
            server.close();
            resolve({
              status: res.statusCode,
              body: raw ? JSON.parse(raw) : null,
            });
          });
        }
      );
      req.on('error', (e) => {
        server.close();
        reject(e);
      });
      if (payload) req.write(payload);
      req.end();
    });
  });
}

async function login(app, phone = '13800138000') {
  const res = await callApp(app, 'POST', '/api/auth/login', {
    body: { phone, password: '123456' },
  });
  return res.body.token;
}

before(() => {
  if (fs.existsSync(dbPath)) fs.unlinkSync(dbPath);
  process.env.VOCATIONAL_DB_PATH = dbPath;
  delete require.cache[require.resolve('../src/db')];
  delete require.cache[require.resolve('../src/seed')];
  delete require.cache[require.resolve('../src/index')];
  const { seed } = require('../src/seed');
  seed(true);
});

after(() => {
  try {
    const db = require('../src/db');
    db.close();
  } catch (_) {}
  if (fs.existsSync(dbPath)) fs.unlinkSync(dbPath);
});

test('seed creates at least 20 courses and 3 exams', () => {
  const db = require('../src/db');
  assert.ok(db.prepare('SELECT COUNT(*) AS c FROM courses').get().c >= 20);
  assert.equal(db.prepare('SELECT COUNT(*) AS c FROM exams').get().c, 3);
});

test('lesson API returns 403 when not enrolled', async () => {
  const app = require('../src/index');
  const db = require('../src/db');
  const token = await login(app, '13900009999');

  const enrolledCourse = db.prepare('SELECT course_id FROM enrollments LIMIT 1').get();
  const lesson = db
    .prepare('SELECT id FROM lessons WHERE course_id != ? LIMIT 1')
    .get(enrolledCourse?.course_id || 'none');

  assert.ok(lesson, 'seed should have unenrolled course lessons');

  const res = await callApp(app, 'GET', `/api/lessons/${lesson.id}`, { token });
  assert.equal(res.status, 403);
  assert.match(res.body.error, /未报名/);
});

test('exam auto grading and certificate on pass (>=60)', async () => {
  const app = require('../src/index');
  const db = require('../src/db');
  const token = await login(app, '13900008888');

  const exam = db.prepare('SELECT * FROM exams LIMIT 1').get();
  const questions = JSON.parse(exam.questions);
  const answers = {};
  for (const q of questions) answers[q.id] = q.answer;

  const res = await callApp(app, 'POST', `/api/exams/${exam.id}/submit`, {
    token,
    body: { answers },
  });
  assert.equal(res.status, 200);
  assert.equal(res.body.submission.score, 100);
  assert.equal(res.body.submission.passed, true);
  assert.ok(res.body.certificate?.certNo);

  const verify = await callApp(app, 'GET', `/api/certificates/verify?certNo=${encodeURIComponent(res.body.certificate.certNo)}`);
  assert.equal(verify.status, 200);
  assert.equal(verify.body.valid, true);
});

test('exam submission rejected twice same day', async () => {
  const app = require('../src/index');
  const db = require('../src/db');
  const token = await login(app, '13900007777');

  const exam = db.prepare('SELECT * FROM exams WHERE id NOT IN (SELECT exam_id FROM exam_submissions) LIMIT 1').get()
    || db.prepare('SELECT * FROM exams LIMIT 1').get();
  const questions = JSON.parse(exam.questions);
  const answers = {};
  for (const q of questions) answers[q.id] = 0;

  const first = await callApp(app, 'POST', `/api/exams/${exam.id}/submit`, {
    token,
    body: { answers },
  });
  assert.equal(first.status, 200);

  const second = await callApp(app, 'POST', `/api/exams/${exam.id}/submit`, {
    token,
    body: { answers },
  });
  assert.equal(second.status, 429);
  assert.match(second.body.error, /今日/);
});

test('no certificate when score below 60', async () => {
  const app = require('../src/index');
  const db = require('../src/db');
  const token = await login(app, '13900006666');

  const exams = db.prepare('SELECT * FROM exams').all();
  const exam = exams[exams.length - 1];
  const questions = JSON.parse(exam.questions);
  const answers = {};
  for (const q of questions) answers[q.id] = q.answer === 0 ? 1 : 0;

  const res = await callApp(app, 'POST', `/api/exams/${exam.id}/submit`, {
    token,
    body: { answers },
  });
  assert.equal(res.status, 200);
  assert.ok(res.body.submission.score < 60);
  assert.equal(res.body.submission.passed, false);
  assert.equal(res.body.certificate, null);
});
