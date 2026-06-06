const Database = require('better-sqlite3');
const fs = require('fs');
const path = require('path');

const dataDir = path.join(__dirname, '..', 'data');
if (!fs.existsSync(dataDir)) fs.mkdirSync(dataDir, { recursive: true });

const dbPath = process.env.VOCATIONAL_DB_PATH || path.join(dataDir, 'vocational.db');
const db = new Database(dbPath);
db.pragma('journal_mode = WAL');
db.pragma('foreign_keys = ON');

function initSchema() {
  db.exec(`
    CREATE TABLE IF NOT EXISTS users (
      id TEXT PRIMARY KEY,
      phone TEXT NOT NULL UNIQUE,
      nickname TEXT NOT NULL,
      created_at TEXT NOT NULL DEFAULT (datetime('now'))
    );

    CREATE TABLE IF NOT EXISTS sessions (
      token TEXT PRIMARY KEY,
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      created_at TEXT NOT NULL DEFAULT (datetime('now'))
    );

    CREATE TABLE IF NOT EXISTS courses (
      id TEXT PRIMARY KEY,
      title TEXT NOT NULL,
      category TEXT NOT NULL,
      difficulty TEXT NOT NULL DEFAULT 'beginner',
      description TEXT NOT NULL DEFAULT '',
      price REAL NOT NULL DEFAULT 0,
      trial_video_url TEXT NOT NULL DEFAULT '',
      outline TEXT NOT NULL DEFAULT '[]',
      instructor TEXT NOT NULL DEFAULT '',
      hot_score INTEGER NOT NULL DEFAULT 0
    );

    CREATE TABLE IF NOT EXISTS batches (
      id TEXT PRIMARY KEY,
      course_id TEXT NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
      start_date TEXT NOT NULL,
      end_date TEXT NOT NULL,
      schedule TEXT NOT NULL DEFAULT '',
      capacity INTEGER NOT NULL DEFAULT 30,
      enrolled_count INTEGER NOT NULL DEFAULT 0
    );

    CREATE TABLE IF NOT EXISTS enrollments (
      id TEXT PRIMARY KEY,
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      course_id TEXT NOT NULL REFERENCES courses(id),
      batch_id TEXT NOT NULL REFERENCES batches(id),
      installment_plan TEXT NOT NULL DEFAULT 'full',
      status TEXT NOT NULL DEFAULT 'active',
      created_at TEXT NOT NULL DEFAULT (datetime('now')),
      UNIQUE(user_id, course_id)
    );

    CREATE TABLE IF NOT EXISTS lessons (
      id TEXT PRIMARY KEY,
      course_id TEXT NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
      title TEXT NOT NULL,
      sort_order INTEGER NOT NULL DEFAULT 0,
      video_url TEXT NOT NULL DEFAULT '',
      content_md TEXT NOT NULL DEFAULT '',
      duration_minutes INTEGER NOT NULL DEFAULT 30
    );

    CREATE TABLE IF NOT EXISTS assignments (
      id TEXT PRIMARY KEY,
      course_id TEXT NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
      title TEXT NOT NULL,
      description TEXT NOT NULL DEFAULT '',
      due_date TEXT NOT NULL
    );

    CREATE TABLE IF NOT EXISTS assignment_submissions (
      id TEXT PRIMARY KEY,
      assignment_id TEXT NOT NULL REFERENCES assignments(id) ON DELETE CASCADE,
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      submission_url TEXT NOT NULL,
      submitted_at TEXT NOT NULL DEFAULT (datetime('now')),
      UNIQUE(assignment_id, user_id)
    );

    CREATE TABLE IF NOT EXISTS exams (
      id TEXT PRIMARY KEY,
      title TEXT NOT NULL,
      course_id TEXT REFERENCES courses(id),
      duration_minutes INTEGER NOT NULL DEFAULT 60,
      pass_score INTEGER NOT NULL DEFAULT 60,
      questions TEXT NOT NULL DEFAULT '[]'
    );

    CREATE TABLE IF NOT EXISTS exam_submissions (
      id TEXT PRIMARY KEY,
      exam_id TEXT NOT NULL REFERENCES exams(id) ON DELETE CASCADE,
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      answers TEXT NOT NULL DEFAULT '{}',
      score REAL NOT NULL DEFAULT 0,
      passed INTEGER NOT NULL DEFAULT 0,
      submitted_at TEXT NOT NULL DEFAULT (datetime('now'))
    );

    CREATE TABLE IF NOT EXISTS certificates (
      id TEXT PRIMARY KEY,
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      exam_id TEXT NOT NULL REFERENCES exams(id),
      cert_no TEXT NOT NULL UNIQUE,
      course_name TEXT NOT NULL,
      issued_at TEXT NOT NULL DEFAULT (datetime('now'))
    );

    CREATE TABLE IF NOT EXISTS jobs (
      id TEXT PRIMARY KEY,
      title TEXT NOT NULL,
      company TEXT NOT NULL,
      salary_range TEXT NOT NULL DEFAULT '',
      city TEXT NOT NULL DEFAULT '',
      requirements TEXT NOT NULL DEFAULT '',
      description TEXT NOT NULL DEFAULT '',
      category TEXT NOT NULL DEFAULT ''
    );

    CREATE TABLE IF NOT EXISTS qa_threads (
      id TEXT PRIMARY KEY,
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      course_id TEXT REFERENCES courses(id),
      question TEXT NOT NULL,
      answer TEXT NOT NULL DEFAULT '',
      status TEXT NOT NULL DEFAULT 'pending',
      created_at TEXT NOT NULL DEFAULT (datetime('now')),
      answered_at TEXT
    );

    CREATE TABLE IF NOT EXISTS installments (
      id TEXT PRIMARY KEY,
      enrollment_id TEXT NOT NULL REFERENCES enrollments(id) ON DELETE CASCADE,
      period_no INTEGER NOT NULL,
      amount REAL NOT NULL,
      due_date TEXT NOT NULL,
      status TEXT NOT NULL DEFAULT 'pending',
      paid_at TEXT
    );

    CREATE TABLE IF NOT EXISTS notifications (
      id TEXT PRIMARY KEY,
      user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      title TEXT NOT NULL,
      body TEXT NOT NULL,
      type TEXT NOT NULL DEFAULT 'system',
      read_flag INTEGER NOT NULL DEFAULT 0,
      created_at TEXT NOT NULL DEFAULT (datetime('now'))
    );
  `);
}

initSchema();

module.exports = db;
