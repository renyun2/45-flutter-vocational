# 项目 45：职业技能培训 App

职业培训报名 App：课程目录（IT/财会/技工）、试听、班级排期、在线作业 Mock、模考、证书查询、就业推荐、分期付款 Mock、讲师答疑。

## 技术栈

| 层级 | 技术 |
|------|------|
| 前端 | Flutter 3.22+、Riverpod + freezed、go_router、dio、flutter_markdown、fl_chart |
| 后端 Mock | Express + SQLite，端口 **3032** |

## Web 兼容约束

- **禁止**：直播 SDK、防切屏、camera 监考
- **替代**：直播=回放 URL；模考=限时前端 Timer+后端交卷；证书=编号查询

## 测试账号

- 手机号：`13800138000`
- 密码：`123456`

## 快速启动

**终端 1 — 后端**

```bash
cd backend
npm install
npm run dev
```

**终端 2 — Flutter Web**

```bash
cd mobile
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run -d chrome --web-port=5202 --dart-define=API_BASE=http://localhost:3032
```

## 目录结构

```
45-flutter-vocational/
├── backend/          # Express Mock API (:3032)
├── mobile/           # Flutter App
├── prompt.md         # 需求规格
└── README.md
```

## 路由（24 页）

| 路由 | 页面 | Tab |
|------|------|-----|
| `/splash` | 启动 | |
| `/login` | 登录 | |
| `/home` | 首页（热门课） | 首页 |
| `/courses` | 课程列表 | |
| `/course/:id` | 课程详情 / 试听 | |
| `/course/:id/batches` | 班级选择 | |
| `/enroll` | 报名支付（分期） | |
| `/my-courses` | 我的学习 | 学习 |
| `/lesson/:id` | 课时学习 | |
| `/assignments` | 作业列表 | |
| `/assignment/:id` | 提交作业 | |
| `/exams` | 模考列表 | 模考 |
| `/exam/:id` | 模考答题（倒计时） | |
| `/exam/:id/result` | 模考结果 | |
| `/scores` | 成绩趋势（fl_chart） | |
| `/certificate/verify` | 证书查询 | |
| `/certificates` | 我的证书 | |
| `/jobs` | 就业推荐 | |
| `/job/:id` | 岗位详情 | |
| `/qa` | 讲师答疑 | |
| `/installments` | 分期账单 | |
| `/messages` | 消息 | |
| `/profile` | 个人中心 | 我的 |
| `/settings` | 设置 | |

**底部导航**：首页 | 学习 | 模考 | 我的

## 业务规则

- 未报名不可看课时（lesson API 403，引导报名）
- 模考每日一次，前端倒计时，时间到自动交卷
- 自动阅卷 Mock，及格 **60 分** 颁发证书
- 分期 Mock：每月扣款状态（paid / pending）

## 测试

```bash
# 后端 API 测试（报名门禁、阅卷、证书条件）
cd backend && npm test

# Flutter 模型与 Widget 测试
cd mobile
dart run build_runner build --delete-conflicting-outputs
flutter test
```

## Seed 数据

- **24 门课程**（IT/财会/技工 各 8 门）
- **3 套模考题库**（IT / 财会 / 技工）
- 演示用户已报名 1 门课，含分期账单样例
- 8 条就业推荐、答疑与消息样例

## API 概览

| 模块 | 路径 |
|------|------|
| 认证 | `/api/auth/*` |
| 课程 | `GET /api/courses`, `GET /api/courses/:id`, `GET /api/courses/:id/lessons` |
| 班级 | `GET /api/batches` |
| 报名 | `POST/GET /api/enrollments` |
| 课时 | `GET /api/lessons/:id` |
| 作业 | `GET/POST /api/assignments` |
| 模考 | `GET /api/exams`, `GET /api/exams/:id`, `POST /api/exams/:id/submit` |
| 成绩 | `GET /api/scores` |
| 证书 | `GET /api/certificates`, `GET /api/certificates/verify` |
| 就业 | `GET /api/jobs` |
| 答疑 | `GET/POST /api/qa` |
| 分期 | `GET /api/installments` |
| 消息 | `GET /api/notifications` |
