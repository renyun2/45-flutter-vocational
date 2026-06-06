const { v4: uuidv4 } = require('uuid');
const db = require('./db');

const CATEGORIES = ['IT', '财会', '技工'];
const DIFFICULTIES = ['beginner', 'intermediate', 'advanced'];

const EXAM_QUESTIONS = {
  it: [
    { id: 'q1', type: 'single', question: 'JavaScript 中 typeof null 的结果是？', options: ['null', 'object', 'undefined', 'number'], answer: 1 },
    { id: 'q2', type: 'single', question: 'HTTP 状态码 404 表示？', options: ['成功', '重定向', '未找到', '服务器错误'], answer: 2 },
    { id: 'q3', type: 'single', question: 'CSS 盒模型中 padding 属于？', options: ['内容区', '内边距', '边框', '外边距'], answer: 1 },
    { id: 'q4', type: 'single', question: 'Git 中合并分支常用命令？', options: ['git pull', 'git merge', 'git clone', 'git init'], answer: 1 },
    { id: 'q5', type: 'single', question: 'SQL 中用于去重的关键字？', options: ['UNIQUE', 'DISTINCT', 'GROUP', 'FILTER'], answer: 1 },
  ],
  finance: [
    { id: 'q1', type: 'single', question: '资产负债表反映的是？', options: ['经营成果', '财务状况', '现金流量', '利润分布'], answer: 1 },
    { id: 'q2', type: 'single', question: '增值税属于？', options: ['直接税', '间接税', '财产税', '行为税'], answer: 1 },
    { id: 'q3', type: 'single', question: '借贷记账法下，资产增加记？', options: ['借方', '贷方', '均可', '不记'], answer: 0 },
    { id: 'q4', type: 'single', question: '会计恒等式是？', options: ['资产=负债', '资产=负债+所有者权益', '收入=费用', '利润=收入'], answer: 1 },
    { id: 'q5', type: 'single', question: '出纳主要负责？', options: ['记账', '现金收付', '审计', '报税'], answer: 1 },
  ],
  trade: [
    { id: 'q1', type: 'single', question: '电工操作中首先应？', options: ['戴手套', '断电验电', '直接接线', '用水灭火'], answer: 1 },
    { id: 'q2', type: 'single', question: '焊接时防护眼镜主要防？', options: ['噪音', '弧光', '粉尘', '振动'], answer: 1 },
    { id: 'q3', type: 'single', question: '车床主轴转速单位通常是？', options: ['m/s', 'r/min', 'Hz', 'kW'], answer: 1 },
    { id: 'q4', type: 'single', question: 'PLC 全称是？', options: ['可编程逻辑控制器', '电力线通信', '个人计算机', '程序语言编译器'], answer: 0 },
    { id: 'q5', type: 'single', question: '安全色中红色表示？', options: ['警告', '禁止', '指令', '提示'], answer: 1 },
  ],
};

const COURSE_TITLES = {
  IT: [
    'Web 前端开发实战', 'Java 后端工程师', 'Python 数据分析', 'UI/UX 设计入门',
    '云计算运维基础', '网络安全工程师', '移动端 Flutter 开发', '大数据 Hadoop 入门',
  ],
  财会: [
    '初级会计实务', '中级财务管理', '税务筹划实务', '成本会计精讲',
    '审计学基础', 'Excel 财务建模', '管理会计', '出纳实务操作',
  ],
  技工: [
    '电工证考前冲刺', '焊工技能实训', '数控车床操作', 'PLC 编程入门',
    '汽车维修基础', '工业机器人操作', '制冷设备维修', '电梯维保实务',
  ],
};

function clearAll() {
  const tables = [
    'notifications', 'installments', 'qa_threads', 'certificates',
    'exam_submissions', 'assignment_submissions', 'enrollments',
    'assignments', 'lessons', 'batches', 'exams', 'jobs', 'courses',
    'sessions', 'users',
  ];
  for (const t of tables) db.prepare(`DELETE FROM ${t}`).run();
}

function isEnrolled(userId, courseId) {
  return !!db
    .prepare("SELECT id FROM enrollments WHERE user_id = ? AND course_id = ? AND status = 'active'")
    .get(userId, courseId);
}

function seed(force = false) {
  const count = db.prepare('SELECT COUNT(*) AS c FROM courses').get().c;
  if (count > 0 && !force) return;
  if (force) clearAll();

  const demoUserId = uuidv4();
  db.prepare('INSERT INTO users (id, phone, nickname) VALUES (?, ?, ?)').run(
    demoUserId,
    '13800138000',
    '演示学员'
  );

  const courseIds = [];
  let hotRank = 100;

  for (const cat of CATEGORIES) {
    for (const title of COURSE_TITLES[cat]) {
      const courseId = uuidv4();
      courseIds.push({ id: courseId, cat, title });
      const price = 1980 + Math.floor(Math.random() * 5000);
      const diff = DIFFICULTIES[Math.floor(Math.random() * DIFFICULTIES.length)];
      const outline = JSON.stringify([
        { chapter: '第1章 入门', items: ['课程介绍', '环境搭建', '基础概念'] },
        { chapter: '第2章 核心', items: ['核心技能', '案例练习', '阶段测验'] },
        { chapter: '第3章 实战', items: ['项目实战', '就业指导', '模考冲刺'] },
      ]);
      db.prepare(
        `INSERT INTO courses (id, title, category, difficulty, description, price, trial_video_url, outline, instructor, hot_score)
         VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`
      ).run(
        courseId,
        title,
        cat,
        diff,
        `${title} — 社会职业考证与就业导向培训，含试听、作业与模考。`,
        price,
        'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
        outline,
        `${cat}讲师${String.fromCharCode(65 + Math.floor(Math.random() * 5))}`,
        hotRank--
      );

      for (let b = 0; b < 2; b++) {
        const start = new Date();
        start.setDate(start.getDate() + 14 + b * 30);
        const end = new Date(start);
        end.setDate(end.getDate() + 90);
        db.prepare(
          `INSERT INTO batches (id, course_id, start_date, end_date, schedule, capacity, enrolled_count)
           VALUES (?, ?, ?, ?, ?, ?, ?)`
        ).run(
          uuidv4(),
          courseId,
          start.toISOString().slice(0, 10),
          end.toISOString().slice(0, 10),
          '周二/四 19:00-21:00',
          30,
          Math.floor(Math.random() * 10)
        );
      }

      for (let l = 1; l <= 5; l++) {
        db.prepare(
          `INSERT INTO lessons (id, course_id, title, sort_order, video_url, content_md, duration_minutes)
           VALUES (?, ?, ?, ?, ?, ?, ?)`
        ).run(
          uuidv4(),
          courseId,
          `第${l}课时`,
          l,
          'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
          `# 第${l}课时\n\n本课学习${title}相关内容。\n\n## 要点\n- 理论讲解\n- 实操演示\n- 课后练习`,
          30 + l * 5
        );
      }

      const due = new Date();
      due.setDate(due.getDate() + 7);
      db.prepare(
        `INSERT INTO assignments (id, course_id, title, description, due_date) VALUES (?, ?, ?, ?, ?)`
      ).run(
        uuidv4(),
        courseId,
        `${title} — 阶段作业`,
        '提交作业链接（GitHub/网盘等 URL 文字）',
        due.toISOString()
      );
    }
  }

  const examDefs = [
    { key: 'it', title: 'IT 职业技能模考', courseCat: 'IT' },
    { key: 'finance', title: '财会职业模考', courseCat: '财会' },
    { key: 'trade', title: '技工职业模考', courseCat: '技工' },
  ];
  const examIds = [];
  for (const def of examDefs) {
    const course = courseIds.find((c) => c.cat === def.courseCat);
    const examId = uuidv4();
    examIds.push(examId);
    db.prepare(
      `INSERT INTO exams (id, title, course_id, duration_minutes, pass_score, questions)
       VALUES (?, ?, ?, ?, ?, ?)`
    ).run(examId, def.title, course.id, 30, 60, JSON.stringify(EXAM_QUESTIONS[def.key]));
  }

  const demoCourse = courseIds[0];
  const demoBatch = db
    .prepare('SELECT id FROM batches WHERE course_id = ? LIMIT 1')
    .get(demoCourse.id);
  const enrollmentId = uuidv4();
  db.prepare(
    `INSERT INTO enrollments (id, user_id, course_id, batch_id, installment_plan, status)
     VALUES (?, ?, ?, ?, ?, 'active')`
  ).run(enrollmentId, demoUserId, demoCourse.id, demoBatch.id, '3');

  const enrollPrice = db.prepare('SELECT price FROM courses WHERE id = ?').get(demoCourse.id).price;
  const perMonth = Math.round((enrollPrice / 3) * 100) / 100;
  for (let i = 1; i <= 3; i++) {
    const due = new Date();
    due.setMonth(due.getMonth() + i - 1);
    db.prepare(
      `INSERT INTO installments (id, enrollment_id, period_no, amount, due_date, status, paid_at)
       VALUES (?, ?, ?, ?, ?, ?, ?)`
    ).run(
      uuidv4(),
      enrollmentId,
      i,
      perMonth,
      due.toISOString().slice(0, 10),
      i === 1 ? 'paid' : 'pending',
      i === 1 ? new Date().toISOString() : null
    );
  }

  const jobs = [
    ['前端开发工程师', '智联科技', '8K-15K', '北京', 'IT'],
    ['Java 后端开发', '云途信息', '10K-18K', '上海', 'IT'],
    ['初级会计', '恒信财务', '5K-8K', '广州', '财会'],
    ['税务专员', '金税咨询', '6K-10K', '深圳', '财会'],
    ['电工技师', '华电工程', '7K-12K', '成都', '技工'],
    ['数控操作工', '精密制造', '6K-9K', '苏州', '技工'],
    ['数据分析师', '数智未来', '12K-20K', '杭州', 'IT'],
    ['出纳', '商贸集团', '4K-6K', '武汉', '财会'],
  ];
  for (const [title, company, salary, city, cat] of jobs) {
    db.prepare(
      `INSERT INTO jobs (id, title, company, salary_range, city, requirements, description, category)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?)`
    ).run(
      uuidv4(),
      title,
      company,
      salary,
      city,
      '持证优先，1年以上相关经验',
      `${company} 招聘 ${title}，欢迎职业培训学员投递。`,
      cat
    );
  }

  db.prepare(
    `INSERT INTO qa_threads (id, user_id, course_id, question, answer, status, answered_at)
     VALUES (?, ?, ?, ?, ?, 'answered', datetime('now'))`
  ).run(
    uuidv4(),
    demoUserId,
    demoCourse.id,
    '课程回放在哪里看？',
    '已报名学员可在「课时学习」页面观看回放 URL。'
  );

  db.prepare(
    `INSERT INTO notifications (id, user_id, title, body, type) VALUES (?, ?, ?, ?, ?)`
  ).run(
    uuidv4(),
    demoUserId,
    '欢迎加入职业培训',
    '您已成功报名，请按时完成课时与模考。',
    'system'
  );

  console.log(`Seeded ${courseIds.length} courses, ${examIds.length} exams`);
}

module.exports = { seed, isEnrolled, EXAM_QUESTIONS, DEMO_USER_ID: () => {
  const u = db.prepare("SELECT id FROM users WHERE phone = '13800138000'").get();
  return u?.id;
}};
