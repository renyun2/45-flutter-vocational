import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/network/dio_client.dart';
import '../models/models.dart';

class VocationalRepository {
  VocationalRepository(this._dio);
  final Dio _dio;

  Future<({String token, UserProfile user})> login(String phone, String password) async {
    final res = await _dio.post('/api/auth/login', data: {'phone': phone, 'password': password});
    return (
      token: res.data['token'] as String,
      user: UserProfile.fromJson(res.data['user'] as Map<String, dynamic>),
    );
  }

  Future<void> logout() async {
    await _dio.post('/api/auth/logout');
  }

  Future<List<Course>> fetchCourses({String? category, String? difficulty}) async {
    final res = await _dio.get('/api/courses', queryParameters: {
      if (category != null) 'category': category,
      if (difficulty != null) 'difficulty': difficulty,
    });
    return (res.data['courses'] as List)
        .map((e) => Course.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<Course> fetchCourse(String id) async {
    final res = await _dio.get('/api/courses/$id');
    return Course.fromJson(res.data['course'] as Map<String, dynamic>);
  }

  Future<List<Batch>> fetchBatches({String? courseId}) async {
    final res = await _dio.get('/api/batches', queryParameters: {
      if (courseId != null) 'courseId': courseId,
    });
    return (res.data['batches'] as List)
        .map((e) => Batch.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> enroll({
    required String courseId,
    required String batchId,
    required String installmentPlan,
  }) async {
    await _dio.post('/api/enrollments', data: {
      'courseId': courseId,
      'batchId': batchId,
      'installmentPlan': installmentPlan,
    });
  }

  Future<List<Enrollment>> fetchEnrollments() async {
    final res = await _dio.get('/api/enrollments');
    return (res.data['enrollments'] as List)
        .map((e) => Enrollment.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<Lesson>> fetchCourseLessons(String courseId) async {
    final res = await _dio.get('/api/courses/$courseId/lessons');
    return (res.data['lessons'] as List)
        .map((e) => Lesson.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<Lesson> fetchLesson(String id) async {
    final res = await _dio.get('/api/lessons/$id');
    return Lesson.fromJson(res.data['lesson'] as Map<String, dynamic>);
  }

  Future<List<Assignment>> fetchAssignments({String? courseId}) async {
    final res = await _dio.get('/api/assignments', queryParameters: {
      if (courseId != null) 'courseId': courseId,
    });
    return (res.data['assignments'] as List)
        .map((e) => Assignment.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> submitAssignment(String assignmentId, String submissionUrl) async {
    await _dio.post('/api/assignments', data: {
      'assignmentId': assignmentId,
      'submissionUrl': submissionUrl,
    });
  }

  Future<List<ExamListItem>> fetchExams() async {
    final res = await _dio.get('/api/exams');
    return (res.data['exams'] as List)
        .map((e) => ExamListItem.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<Exam> fetchExam(String id) async {
    final res = await _dio.get('/api/exams/$id');
    return Exam.fromJson(res.data['exam'] as Map<String, dynamic>);
  }

  Future<({ExamSubmission submission, Certificate? certificate})> submitExam(
    String examId,
    Map<String, int> answers,
  ) async {
    final res = await _dio.post('/api/exams/$examId/submit', data: {'answers': answers});
    final submission = ExamSubmission.fromJson(res.data['submission'] as Map<String, dynamic>);
    final certData = res.data['certificate'];
    return (
      submission: submission,
      certificate: certData != null
          ? Certificate.fromJson(certData as Map<String, dynamic>)
          : null,
    );
  }

  Future<List<ScoreRecord>> fetchScores() async {
    final res = await _dio.get('/api/scores');
    return (res.data['scores'] as List)
        .map((e) => ScoreRecord.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<Certificate> verifyCertificate(String certNo) async {
    final res = await _dio.get('/api/certificates/verify', queryParameters: {'certNo': certNo});
    return Certificate.fromJson(res.data['certificate'] as Map<String, dynamic>);
  }

  Future<List<Certificate>> fetchCertificates() async {
    final res = await _dio.get('/api/certificates');
    return (res.data['certificates'] as List)
        .map((e) => Certificate.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<Job>> fetchJobs({String? category, String? city}) async {
    final res = await _dio.get('/api/jobs', queryParameters: {
      if (category != null) 'category': category,
      if (city != null) 'city': city,
    });
    return (res.data['jobs'] as List)
        .map((e) => Job.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<Job> fetchJob(String id) async {
    final res = await _dio.get('/api/jobs/$id');
    return Job.fromJson(res.data['job'] as Map<String, dynamic>);
  }

  Future<List<QaThread>> fetchQaThreads() async {
    final res = await _dio.get('/api/qa');
    return (res.data['threads'] as List)
        .map((e) => QaThread.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> postQuestion(String question, {String? courseId}) async {
    await _dio.post('/api/qa', data: {
      'question': question,
      if (courseId != null) 'courseId': courseId,
    });
  }

  Future<List<Installment>> fetchInstallments() async {
    final res = await _dio.get('/api/installments');
    return (res.data['installments'] as List)
        .map((e) => Installment.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<AppNotification>> fetchNotifications() async {
    final res = await _dio.get('/api/notifications');
    return (res.data['notifications'] as List)
        .map((e) => AppNotification.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> markNotificationRead(String id) async {
    await _dio.post('/api/notifications/$id/read');
  }
}

final vocationalRepositoryProvider = Provider<VocationalRepository>((ref) {
  return VocationalRepository(ref.watch(dioProvider));
});
