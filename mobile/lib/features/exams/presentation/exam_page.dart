import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/app_router.dart';
import '../../../core/network/dio_client.dart';
import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

class ExamPage extends ConsumerStatefulWidget {
  const ExamPage({super.key, required this.examId});
  final String examId;

  @override
  ConsumerState<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends ConsumerState<ExamPage> {
  Exam? _exam;
  final _answers = <String, int>{};
  Timer? _timer;
  var _secondsLeft = 0;
  var _submitting = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final exam = await ref.read(vocationalRepositoryProvider).fetchExam(widget.examId);
      if (!mounted) return;
      if (exam.alreadyTakenToday) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('今日已参加过该模考')),
        );
        context.pop();
        return;
      }
      setState(() {
        _exam = exam;
        _secondsLeft = exam.durationMinutes * 60;
      });
      _timer = Timer.periodic(const Duration(seconds: 1), (_) {
        if (_secondsLeft <= 0) {
          _timer?.cancel();
          _submit(auto: true);
          return;
        }
        setState(() => _secondsLeft--);
      });
    } on DioException catch (e) {
      if (mounted) {
        final msg = e.error is ApiException ? (e.error as ApiException).message : '加载失败';
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
        context.pop();
      }
    }
  }

  Future<void> _submit({bool auto = false}) async {
    if (_submitting || _exam == null) return;
    _timer?.cancel();
    setState(() => _submitting = true);
    try {
      final result = await ref.read(vocationalRepositoryProvider).submitExam(
            widget.examId,
            _answers,
          );
      if (!mounted) return;
      context.pushReplacement(
        '/exam/${widget.examId}/result',
        extra: ExamResultArgs(
          examId: widget.examId,
          submission: result.submission,
          certificate: result.certificate,
        ),
      );
    } on DioException catch (e) {
      final msg = e.error is ApiException ? (e.error as ApiException).message : '交卷失败';
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get _timeLabel {
    final m = _secondsLeft ~/ 60;
    final s = _secondsLeft % 60;
    return '${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    if (_exam == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    final exam = _exam!;
    return Scaffold(
      appBar: AppBar(
        title: Text(exam.title),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Text(_timeLabel, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('限时模考（前端 Timer + 后端交卷）'),
          const SizedBox(height: 16),
          ...exam.questions.map((q) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(q.question, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ...List.generate(q.options.length, (i) {
                      return RadioListTile<int>(
                        dense: true,
                        value: i,
                        groupValue: _answers[q.id],
                        onChanged: (v) => setState(() => _answers[q.id] = v!),
                        title: Text(q.options[i]),
                      );
                    }),
                  ],
                ),
              ),
            );
          }),
          FilledButton(
            onPressed: _submitting ? null : () => _submit(),
            child: Text(_submitting ? '交卷中...' : '交卷'),
          ),
        ],
      ),
    );
  }
}
