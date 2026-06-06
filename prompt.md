# 项目 45：职业技能培训 App（Flutter）

> 本文件仅描述需求，不包含任何实现代码。UI 使用 Material 基础组件，不做美化。

## 一、项目简介
职业培训报名 App：课程目录（IT/财会/技工）、试听、班级排期、在线作业 Mock、模考、证书查询、就业推荐、分期付款 Mock、讲师答疑。与校园 LMS（16）区分：社会职业考证与就业导向。

## 二、技术栈

### 前端
- Flutter 3.22+、Riverpod + freezed、go_router、dio
- flutter_markdown（课件）
- fl_chart（模考分数趋势）

### 后端 Mock
- Express + SQLite，端口 `3032`

### Web 兼容约束
- **禁止**：直播 SDK、防切屏、camera 监考
- **替代**：直播=回放 URL；模考=限时前端 Timer+后端交卷；证书=编号查询

## 三、后端 Mock API 设计

| 模块 | 路径 | 说明 |
|------|------|------|
| 认证 | `/api/auth/*` | |
| 课程 | GET `/api/courses` | 分类、难度 |
| 课程 | GET `/api/courses/:id` | 大纲 |
| 班级 | GET `/api/batches` | 开课日期 |
| 报名 | POST `/api/enrollments` | 分期选项 |
| 报名 | GET `/api/enrollments` | 我的课程 |
| 课时 | GET `/api/lessons/:id` | 视频/文稿 |
| 作业 | GET/POST `/api/assignments` | 提交 URL 文字 |
| 模考 | GET `/api/exams/:id` | 题目 JSON |
| 模考 | POST `/api/exams/:id/submit` | 自动阅卷 Mock |
| 成绩 | GET `/api/scores` | |
| 证书 | GET `/api/certificates/verify` | 编号 |
| 就业 | GET `/api/jobs` | 推荐岗位 Mock |
| 答疑 | GET/POST `/api/qa` | |
| 分期 | GET `/api/installments` | |
| 消息 | `/api/notifications` | |

**业务规则**：未报名不可看课时；模考一次/天；及格 60 分发证书 Mock。

## 四、页面清单（≥24 页）

| 序号 | 页面 | 路由 | 说明 |
|------|------|------|------|
| 1 | 启动 | `/splash` | |
| 2 | 登录 | `/login` | |
| 3 | 首页 | `/home` | 热门课 |
| 4 | 课程列表 | `/courses` | |
| 5 | 课程详情 | `/course/:id` | 试听 |
| 6 | 班级选择 | `/course/:id/batches` | |
| 7 | 报名支付 | `/enroll` | 分期 |
| 8 | 我的学习 | `/my-courses` | |
| 9 | 课时学习 | `/lesson/:id` | |
| 10 | 作业列表 | `/assignments` | |
| 11 | 提交作业 | `/assignment/:id` | |
| 12 | 模考列表 | `/exams` | |
| 13 | 模考答题 | `/exam/:id` | 倒计时 |
| 14 | 模考结果 | `/exam/:id/result` | |
| 15 | 成绩趋势 | `/scores` | fl_chart |
| 16 | 证书查询 | `/certificate/verify` | |
| 17 | 我的证书 | `/certificates` | |
| 18 | 就业推荐 | `/jobs` | |
| 19 | 岗位详情 | `/job/:id` | |
| 20 | 讲师答疑 | `/qa` | |
| 21 | 分期账单 | `/installments` | |
| 22 | 消息 | `/messages` | |
| 23 | 个人中心 | `/profile` | |
| 24 | 设置 | `/settings` | |

**底部导航**：首页 | 学习 | 模考 | 我的

## 五、核心功能需求
1. 报名门禁：lesson API 403 引导报名
2. 模考：全屏倒计时、自动交卷
3. 分期：每月 Mock 扣款状态
4. 证书：编号验证展示

## 六、编译与调试
```bash
cd backend && npm run dev    # :3032
flutter run -d chrome --web-port=5202 --dart-define=API_BASE=http://localhost:3032
```

## 七、交付物
- seed：≥20 课程、3 套模考题库
- 测试：报名门禁、阅卷、证书条件
- README

## 八、本次任务
**只列出需求和架构规划，不要写代码。**
