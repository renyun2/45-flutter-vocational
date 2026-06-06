// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['id'] as String,
      phone: json['phone'] as String,
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'nickname': instance.nickname,
    };

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      category: json['category'] as String,
      difficulty: json['difficulty'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      trialVideoUrl: json['trialVideoUrl'] as String? ?? '',
      outline: (json['outline'] as List<dynamic>?)
              ?.map((e) =>
                  CourseOutlineChapter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      instructor: json['instructor'] as String,
      hotScore: (json['hotScore'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category': instance.category,
      'difficulty': instance.difficulty,
      'description': instance.description,
      'price': instance.price,
      'trialVideoUrl': instance.trialVideoUrl,
      'outline': instance.outline,
      'instructor': instance.instructor,
      'hotScore': instance.hotScore,
    };

_$CourseOutlineChapterImpl _$$CourseOutlineChapterImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseOutlineChapterImpl(
      chapter: json['chapter'] as String,
      items:
          (json['items'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$CourseOutlineChapterImplToJson(
        _$CourseOutlineChapterImpl instance) =>
    <String, dynamic>{
      'chapter': instance.chapter,
      'items': instance.items,
    };

_$BatchImpl _$$BatchImplFromJson(Map<String, dynamic> json) => _$BatchImpl(
      id: json['id'] as String,
      courseId: json['courseId'] as String,
      courseTitle: json['courseTitle'] as String?,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      schedule: json['schedule'] as String,
      capacity: (json['capacity'] as num).toInt(),
      enrolledCount: (json['enrolledCount'] as num).toInt(),
      remaining: (json['remaining'] as num).toInt(),
    );

Map<String, dynamic> _$$BatchImplToJson(_$BatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'courseTitle': instance.courseTitle,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'schedule': instance.schedule,
      'capacity': instance.capacity,
      'enrolledCount': instance.enrolledCount,
      'remaining': instance.remaining,
    };

_$EnrollmentImpl _$$EnrollmentImplFromJson(Map<String, dynamic> json) =>
    _$EnrollmentImpl(
      id: json['id'] as String,
      courseId: json['courseId'] as String,
      courseTitle: json['courseTitle'] as String,
      category: json['category'] as String,
      batchId: json['batchId'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      schedule: json['schedule'] as String,
      installmentPlan: json['installmentPlan'] as String,
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$EnrollmentImplToJson(_$EnrollmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'courseTitle': instance.courseTitle,
      'category': instance.category,
      'batchId': instance.batchId,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'schedule': instance.schedule,
      'installmentPlan': instance.installmentPlan,
      'status': instance.status,
      'createdAt': instance.createdAt,
    };

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
      id: json['id'] as String,
      courseId: json['courseId'] as String,
      title: json['title'] as String,
      sortOrder: (json['sortOrder'] as num).toInt(),
      videoUrl: json['videoUrl'] as String? ?? '',
      contentMd: json['contentMd'] as String? ?? '',
      durationMinutes: (json['durationMinutes'] as num?)?.toInt() ?? 30,
    );

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'title': instance.title,
      'sortOrder': instance.sortOrder,
      'videoUrl': instance.videoUrl,
      'contentMd': instance.contentMd,
      'durationMinutes': instance.durationMinutes,
    };

_$AssignmentImpl _$$AssignmentImplFromJson(Map<String, dynamic> json) =>
    _$AssignmentImpl(
      id: json['id'] as String,
      courseId: json['courseId'] as String,
      courseTitle: json['courseTitle'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      dueDate: json['dueDate'] as String,
      submitted: json['submitted'] as bool? ?? false,
      submissionUrl: json['submissionUrl'] as String?,
    );

Map<String, dynamic> _$$AssignmentImplToJson(_$AssignmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'courseTitle': instance.courseTitle,
      'title': instance.title,
      'description': instance.description,
      'dueDate': instance.dueDate,
      'submitted': instance.submitted,
      'submissionUrl': instance.submissionUrl,
    };

_$ExamQuestionImpl _$$ExamQuestionImplFromJson(Map<String, dynamic> json) =>
    _$ExamQuestionImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      question: json['question'] as String,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ExamQuestionImplToJson(_$ExamQuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'question': instance.question,
      'options': instance.options,
    };

_$ExamImpl _$$ExamImplFromJson(Map<String, dynamic> json) => _$ExamImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      courseId: json['courseId'] as String?,
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      passScore: (json['passScore'] as num).toInt(),
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => ExamQuestion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      alreadyTakenToday: json['alreadyTakenToday'] as bool? ?? false,
    );

Map<String, dynamic> _$$ExamImplToJson(_$ExamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'courseId': instance.courseId,
      'durationMinutes': instance.durationMinutes,
      'passScore': instance.passScore,
      'questions': instance.questions,
      'alreadyTakenToday': instance.alreadyTakenToday,
    };

_$ExamListItemImpl _$$ExamListItemImplFromJson(Map<String, dynamic> json) =>
    _$ExamListItemImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      courseId: json['courseId'] as String?,
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      passScore: (json['passScore'] as num).toInt(),
    );

Map<String, dynamic> _$$ExamListItemImplToJson(_$ExamListItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'courseId': instance.courseId,
      'durationMinutes': instance.durationMinutes,
      'passScore': instance.passScore,
    };

_$ExamSubmissionImpl _$$ExamSubmissionImplFromJson(Map<String, dynamic> json) =>
    _$ExamSubmissionImpl(
      id: json['id'] as String,
      examId: json['examId'] as String,
      score: (json['score'] as num).toDouble(),
      passed: json['passed'] as bool,
      passScore: (json['passScore'] as num).toInt(),
      totalQuestions: (json['totalQuestions'] as num).toInt(),
      correctCount: (json['correctCount'] as num).toInt(),
    );

Map<String, dynamic> _$$ExamSubmissionImplToJson(
        _$ExamSubmissionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'examId': instance.examId,
      'score': instance.score,
      'passed': instance.passed,
      'passScore': instance.passScore,
      'totalQuestions': instance.totalQuestions,
      'correctCount': instance.correctCount,
    };

_$ScoreRecordImpl _$$ScoreRecordImplFromJson(Map<String, dynamic> json) =>
    _$ScoreRecordImpl(
      id: json['id'] as String,
      examId: json['examId'] as String,
      examTitle: json['examTitle'] as String,
      score: (json['score'] as num).toDouble(),
      passed: json['passed'] as bool,
      passScore: (json['passScore'] as num).toInt(),
      submittedAt: json['submittedAt'] as String,
    );

Map<String, dynamic> _$$ScoreRecordImplToJson(_$ScoreRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'examId': instance.examId,
      'examTitle': instance.examTitle,
      'score': instance.score,
      'passed': instance.passed,
      'passScore': instance.passScore,
      'submittedAt': instance.submittedAt,
    };

_$CertificateImpl _$$CertificateImplFromJson(Map<String, dynamic> json) =>
    _$CertificateImpl(
      id: json['id'] as String,
      certNo: json['certNo'] as String,
      courseName: json['courseName'] as String,
      examId: json['examId'] as String?,
      issuedAt: json['issuedAt'] as String,
      holderName: json['holderName'] as String?,
    );

Map<String, dynamic> _$$CertificateImplToJson(_$CertificateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'certNo': instance.certNo,
      'courseName': instance.courseName,
      'examId': instance.examId,
      'issuedAt': instance.issuedAt,
      'holderName': instance.holderName,
    };

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      company: json['company'] as String,
      salaryRange: json['salaryRange'] as String? ?? '',
      city: json['city'] as String? ?? '',
      requirements: json['requirements'] as String? ?? '',
      description: json['description'] as String? ?? '',
      category: json['category'] as String? ?? '',
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'company': instance.company,
      'salaryRange': instance.salaryRange,
      'city': instance.city,
      'requirements': instance.requirements,
      'description': instance.description,
      'category': instance.category,
    };

_$QaThreadImpl _$$QaThreadImplFromJson(Map<String, dynamic> json) =>
    _$QaThreadImpl(
      id: json['id'] as String,
      courseId: json['courseId'] as String?,
      courseTitle: json['courseTitle'] as String?,
      question: json['question'] as String,
      answer: json['answer'] as String? ?? '',
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
      answeredAt: json['answeredAt'] as String?,
    );

Map<String, dynamic> _$$QaThreadImplToJson(_$QaThreadImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'courseTitle': instance.courseTitle,
      'question': instance.question,
      'answer': instance.answer,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'answeredAt': instance.answeredAt,
    };

_$InstallmentImpl _$$InstallmentImplFromJson(Map<String, dynamic> json) =>
    _$InstallmentImpl(
      id: json['id'] as String,
      enrollmentId: json['enrollmentId'] as String,
      courseId: json['courseId'] as String,
      courseTitle: json['courseTitle'] as String,
      periodNo: (json['periodNo'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      dueDate: json['dueDate'] as String,
      status: json['status'] as String,
      paidAt: json['paidAt'] as String?,
    );

Map<String, dynamic> _$$InstallmentImplToJson(_$InstallmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enrollmentId': instance.enrollmentId,
      'courseId': instance.courseId,
      'courseTitle': instance.courseTitle,
      'periodNo': instance.periodNo,
      'amount': instance.amount,
      'dueDate': instance.dueDate,
      'status': instance.status,
      'paidAt': instance.paidAt,
    };

_$AppNotificationImpl _$$AppNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$AppNotificationImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      type: json['type'] as String,
      read: json['read'] as bool? ?? false,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$AppNotificationImplToJson(
        _$AppNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'type': instance.type,
      'read': instance.read,
      'createdAt': instance.createdAt,
    };
