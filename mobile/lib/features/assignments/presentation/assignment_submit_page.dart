import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/network/dio_client.dart';
import '../../../data/repositories/vocational_repository.dart';

class AssignmentSubmitPage extends ConsumerStatefulWidget {
  const AssignmentSubmitPage({super.key, required this.assignmentId});
  final String assignmentId;

  @override
  ConsumerState<AssignmentSubmitPage> createState() => _AssignmentSubmitPageState();
}

class _AssignmentSubmitPageState extends ConsumerState<AssignmentSubmitPage> {
  final _urlCtrl = TextEditingController();
  var _loading = false;
  String? _title;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final list = await ref.read(vocationalRepositoryProvider).fetchAssignments();
    final a = list.where((e) => e.id == widget.assignmentId).firstOrNull;
    if (a != null && mounted) {
      setState(() {
        _title = a.title;
        if (a.submissionUrl != null) _urlCtrl.text = a.submissionUrl!;
      });
    }
  }

  Future<void> _submit() async {
    if (_urlCtrl.text.trim().isEmpty) return;
    setState(() => _loading = true);
    try {
      await ref.read(vocationalRepositoryProvider).submitAssignment(
            widget.assignmentId,
            _urlCtrl.text.trim(),
          );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('提交成功')));
        context.pop();
      }
    } on DioException catch (e) {
      final err = e.error;
      final msg = err is ApiException ? err.message : '提交失败';
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  void dispose() {
    _urlCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title ?? '提交作业')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('提交作业链接（URL 文字）'),
            const SizedBox(height: 12),
            TextField(
              controller: _urlCtrl,
              decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'https://...'),
              maxLines: 3,
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: _loading ? null : _submit,
              child: Text(_loading ? '提交中...' : '提交'),
            ),
          ],
        ),
      ),
    );
  }
}
