import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String id,
    required String phone,
    required String nickname,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}

@freezed
class Course with _$Course {
  const factory Course({
    required String id,
    required String title,
    required String category,
    required String difficulty,
    required String description,
    required double price,
    @JsonKey(name: 'trialVideoUrl') @Default('') String trialVideoUrl,
    @Default([]) List<CourseOutlineChapter> outline,
    required String instructor,
    @JsonKey(name: 'hotScore') @Default(0) int hotScore,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class CourseOutlineChapter with _$CourseOutlineChapter {
  const factory CourseOutlineChapter({
    required String chapter,
    @Default([]) List<String> items,
  }) = _CourseOutlineChapter;

  factory CourseOutlineChapter.fromJson(Map<String, dynamic> json) =>
      _$CourseOutlineChapterFromJson(json);
}

@freezed
class Batch with _$Batch {
  const factory Batch({
    required String id,
    @JsonKey(name: 'courseId') required String courseId,
    @JsonKey(name: 'courseTitle') String? courseTitle,
    @JsonKey(name: 'startDate') required String startDate,
    @JsonKey(name: 'endDate') required String endDate,
    required String schedule,
    required int capacity,
    @JsonKey(name: 'enrolledCount') required int enrolledCount,
    required int remaining,
  }) = _Batch;

  factory Batch.fromJson(Map<String, dynamic> json) => _$BatchFromJson(json);
}

@freezed
class Enrollment with _$Enrollment {
  const factory Enrollment({
    required String id,
    @JsonKey(name: 'courseId') required String courseId,
    @JsonKey(name: 'courseTitle') required String courseTitle,
    required String category,
    @JsonKey(name: 'batchId') required String batchId,
    @JsonKey(name: 'startDate') required String startDate,
    @JsonKey(name: 'endDate') required String endDate,
    required String schedule,
    @JsonKey(name: 'installmentPlan') required String installmentPlan,
    required String status,
    @JsonKey(name: 'createdAt') required String createdAt,
  }) = _Enrollment;

  factory Enrollment.fromJson(Map<String, dynamic> json) => _$EnrollmentFromJson(json);
}

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required String id,
    @JsonKey(name: 'courseId') required String courseId,
    required String title,
    @JsonKey(name: 'sortOrder') required int sortOrder,
    @JsonKey(name: 'videoUrl') @Default('') String videoUrl,
    @JsonKey(name: 'contentMd') @Default('') String contentMd,
    @JsonKey(name: 'durationMinutes') @Default(30) int durationMinutes,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}

@freezed
class Assignment with _$Assignment {
  const factory Assignment({
    required String id,
    @JsonKey(name: 'courseId') required String courseId,
    @JsonKey(name: 'courseTitle') required String courseTitle,
    required String title,
    required String description,
    @JsonKey(name: 'dueDate') required String dueDate,
    @Default(false) bool submitted,
    @JsonKey(name: 'submissionUrl') String? submissionUrl,
  }) = _Assignment;

  factory Assignment.fromJson(Map<String, dynamic> json) => _$AssignmentFromJson(json);
}

@freezed
class ExamQuestion with _$ExamQuestion {
  const factory ExamQuestion({
    required String id,
    required String type,
    required String question,
    @Default([]) List<String> options,
  }) = _ExamQuestion;

  factory ExamQuestion.fromJson(Map<String, dynamic> json) => _$ExamQuestionFromJson(json);
}

@freezed
class Exam with _$Exam {
  const factory Exam({
    required String id,
    required String title,
    @JsonKey(name: 'courseId') String? courseId,
    @JsonKey(name: 'durationMinutes') required int durationMinutes,
    @JsonKey(name: 'passScore') required int passScore,
    @Default([]) List<ExamQuestion> questions,
    @JsonKey(name: 'alreadyTakenToday') @Default(false) bool alreadyTakenToday,
  }) = _Exam;

  factory Exam.fromJson(Map<String, dynamic> json) => _$ExamFromJson(json);
}

@freezed
class ExamListItem with _$ExamListItem {
  const factory ExamListItem({
    required String id,
    required String title,
    @JsonKey(name: 'courseId') String? courseId,
    @JsonKey(name: 'durationMinutes') required int durationMinutes,
    @JsonKey(name: 'passScore') required int passScore,
  }) = _ExamListItem;

  factory ExamListItem.fromJson(Map<String, dynamic> json) => _$ExamListItemFromJson(json);
}

@freezed
class ExamSubmission with _$ExamSubmission {
  const factory ExamSubmission({
    required String id,
    @JsonKey(name: 'examId') required String examId,
    required double score,
    required bool passed,
    @JsonKey(name: 'passScore') required int passScore,
    @JsonKey(name: 'totalQuestions') required int totalQuestions,
    @JsonKey(name: 'correctCount') required int correctCount,
  }) = _ExamSubmission;

  factory ExamSubmission.fromJson(Map<String, dynamic> json) => _$ExamSubmissionFromJson(json);
}

@freezed
class ScoreRecord with _$ScoreRecord {
  const factory ScoreRecord({
    required String id,
    @JsonKey(name: 'examId') required String examId,
    @JsonKey(name: 'examTitle') required String examTitle,
    required double score,
    required bool passed,
    @JsonKey(name: 'passScore') required int passScore,
    @JsonKey(name: 'submittedAt') required String submittedAt,
  }) = _ScoreRecord;

  factory ScoreRecord.fromJson(Map<String, dynamic> json) => _$ScoreRecordFromJson(json);
}

@freezed
class Certificate with _$Certificate {
  const factory Certificate({
    required String id,
    @JsonKey(name: 'certNo') required String certNo,
    @JsonKey(name: 'courseName') required String courseName,
    @JsonKey(name: 'examId') String? examId,
    @JsonKey(name: 'issuedAt') required String issuedAt,
    @JsonKey(name: 'holderName') String? holderName,
  }) = _Certificate;

  factory Certificate.fromJson(Map<String, dynamic> json) => _$CertificateFromJson(json);
}

@freezed
class Job with _$Job {
  const factory Job({
    required String id,
    required String title,
    required String company,
    @JsonKey(name: 'salaryRange') @Default('') String salaryRange,
    @Default('') String city,
    @Default('') String requirements,
    @Default('') String description,
    @Default('') String category,
  }) = _Job;

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
}

@freezed
class QaThread with _$QaThread {
  const factory QaThread({
    required String id,
    @JsonKey(name: 'courseId') String? courseId,
    @JsonKey(name: 'courseTitle') String? courseTitle,
    required String question,
    @Default('') String answer,
    required String status,
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'answeredAt') String? answeredAt,
  }) = _QaThread;

  factory QaThread.fromJson(Map<String, dynamic> json) => _$QaThreadFromJson(json);
}

@freezed
class Installment with _$Installment {
  const factory Installment({
    required String id,
    @JsonKey(name: 'enrollmentId') required String enrollmentId,
    @JsonKey(name: 'courseId') required String courseId,
    @JsonKey(name: 'courseTitle') required String courseTitle,
    @JsonKey(name: 'periodNo') required int periodNo,
    required double amount,
    @JsonKey(name: 'dueDate') required String dueDate,
    required String status,
    @JsonKey(name: 'paidAt') String? paidAt,
  }) = _Installment;

  factory Installment.fromJson(Map<String, dynamic> json) => _$InstallmentFromJson(json);
}

@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    required String id,
    required String title,
    required String body,
    required String type,
    @Default(false) bool read,
    @JsonKey(name: 'createdAt') required String createdAt,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) => _$AppNotificationFromJson(json);
}
