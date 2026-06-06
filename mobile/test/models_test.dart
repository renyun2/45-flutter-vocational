import 'package:flutter_test/flutter_test.dart';
import 'package:vocational_app/data/models/models.dart';

void main() {
  test('Course fromJson parses outline', () {
    final course = Course.fromJson({
      'id': 'c1',
      'title': 'Web 前端',
      'category': 'IT',
      'difficulty': 'beginner',
      'description': 'desc',
      'price': 2980,
      'outline': [
        {'chapter': '第1章', 'items': ['a', 'b']},
      ],
      'instructor': '张老师',
    });
    expect(course.outline.length, 1);
    expect(course.outline.first.chapter, '第1章');
  });

  test('ExamSubmission passed when score >= passScore', () {
    final sub = ExamSubmission.fromJson({
      'id': 's1',
      'examId': 'e1',
      'score': 80,
      'passed': true,
      'passScore': 60,
      'totalQuestions': 5,
      'correctCount': 4,
    });
    expect(sub.passed, isTrue);
    expect(sub.score, 80);
  });

  test('Certificate certNo field', () {
    final cert = Certificate.fromJson({
      'id': 'cert1',
      'certNo': 'VOC-ABC123',
      'courseName': 'IT 模考',
      'issuedAt': '2026-01-01',
    });
    expect(cert.certNo, 'VOC-ABC123');
  });
}
