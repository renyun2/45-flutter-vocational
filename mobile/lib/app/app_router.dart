import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../data/models/models.dart';
import '../features/auth/application/auth_provider.dart';
import '../features/auth/presentation/login_page.dart';
import '../features/assignments/presentation/assignment_submit_page.dart';
import '../features/assignments/presentation/assignments_page.dart';
import '../features/certificates/presentation/certificate_verify_page.dart';
import '../features/certificates/presentation/certificates_page.dart';
import '../features/courses/presentation/batches_page.dart';
import '../features/courses/presentation/course_detail_page.dart';
import '../features/courses/presentation/courses_page.dart';
import '../features/courses/presentation/enroll_page.dart';
import '../features/exams/presentation/exam_page.dart';
import '../features/exams/presentation/exam_result_page.dart';
import '../features/exams/presentation/exams_page.dart';
import '../features/home/presentation/home_page.dart';
import '../features/home/presentation/home_shell.dart';
import '../features/installments/presentation/installments_page.dart';
import '../features/jobs/presentation/job_detail_page.dart';
import '../features/jobs/presentation/jobs_page.dart';
import '../features/lessons/presentation/lesson_page.dart';
import '../features/messages/presentation/messages_page.dart';
import '../features/my_courses/presentation/my_courses_page.dart';
import '../features/profile/presentation/profile_page.dart';
import '../features/profile/presentation/settings_page.dart';
import '../features/qa/presentation/qa_page.dart';
import '../features/scores/presentation/scores_page.dart';
import '../features/splash/presentation/splash_page.dart';

final _rootKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final routerProvider = Provider<GoRouter>((ref) {
  final refresh = RouterRefreshNotifier(ref);
  ref.onDispose(refresh.dispose);

  return GoRouter(
    navigatorKey: _rootKey,
    initialLocation: '/splash',
    refreshListenable: refresh,
    redirect: (context, state) {
      final authed = ref.read(authProvider) != null;
      final loc = state.matchedLocation;
      const public = ['/splash', '/login', '/certificate/verify'];
      if (public.contains(loc)) {
        if (authed && loc == '/login') return '/home';
        return null;
      }
      if (!authed) return '/login';
      return null;
    },
    routes: [
      GoRoute(path: '/splash', builder: (_, __) => const SplashPage()),
      GoRoute(path: '/login', builder: (_, __) => const LoginPage()),
      GoRoute(
        path: '/certificate/verify',
        builder: (_, __) => const CertificateVerifyPage(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (_, __, shell) => HomeShell(navigationShell: shell),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(path: '/home', builder: (_, __) => const HomePage()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: '/my-courses', builder: (_, __) => const MyCoursesPage()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: '/exams', builder: (_, __) => const ExamsPage()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: '/profile', builder: (_, __) => const ProfilePage()),
          ]),
        ],
      ),
      GoRoute(parentNavigatorKey: _rootKey, path: '/courses', builder: (_, __) => const CoursesPage()),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: '/course/:id',
        builder: (_, s) => CourseDetailPage(courseId: s.pathParameters['id']!),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: '/course/:id/batches',
        builder: (_, s) => BatchesPage(courseId: s.pathParameters['id']!),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: '/enroll',
        builder: (_, s) => EnrollPage(enrollArgs: s.extra as EnrollArgs),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: '/lesson/:id',
        builder: (_, s) => LessonPage(lessonId: s.pathParameters['id']!),
      ),
      GoRoute(parentNavigatorKey: _rootKey, path: '/assignments', builder: (_, __) => const AssignmentsPage()),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: '/assignment/:id',
        builder: (_, s) => AssignmentSubmitPage(assignmentId: s.pathParameters['id']!),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: '/exam/:id',
        builder: (_, s) => ExamPage(examId: s.pathParameters['id']!),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: '/exam/:id/result',
        builder: (_, s) => ExamResultPage(result: s.extra as ExamResultArgs),
      ),
      GoRoute(parentNavigatorKey: _rootKey, path: '/scores', builder: (_, __) => const ScoresPage()),
      GoRoute(parentNavigatorKey: _rootKey, path: '/certificates', builder: (_, __) => const CertificatesPage()),
      GoRoute(parentNavigatorKey: _rootKey, path: '/jobs', builder: (_, __) => const JobsPage()),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: '/job/:id',
        builder: (_, s) => JobDetailPage(jobId: s.pathParameters['id']!),
      ),
      GoRoute(parentNavigatorKey: _rootKey, path: '/qa', builder: (_, __) => const QaPage()),
      GoRoute(parentNavigatorKey: _rootKey, path: '/installments', builder: (_, __) => const InstallmentsPage()),
      GoRoute(parentNavigatorKey: _rootKey, path: '/messages', builder: (_, __) => const MessagesPage()),
      GoRoute(parentNavigatorKey: _rootKey, path: '/settings', builder: (_, __) => const SettingsPage()),
    ],
  );
});

class EnrollArgs {
  EnrollArgs({required this.course, required this.batch});
  final Course course;
  final Batch batch;
}

class ExamResultArgs {
  ExamResultArgs({
    required this.examId,
    required this.submission,
    this.certificate,
  });
  final String examId;
  final ExamSubmission submission;
  final Certificate? certificate;
}
