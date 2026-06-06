import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/app_router.dart';
import '../../../core/network/dio_client.dart';
import '../../../data/repositories/vocational_repository.dart';

class EnrollPage extends ConsumerStatefulWidget {
  const EnrollPage({super.key, required this.enrollArgs});
  final EnrollArgs enrollArgs;

  @override
  ConsumerState<EnrollPage> createState() => _EnrollPageState();
}

class _EnrollPageState extends ConsumerState<EnrollPage> {
  String _plan = 'full';
  var _loading = false;

  Future<void> _submit() async {
    setState(() => _loading = true);
    try {
      await ref.read(vocationalRepositoryProvider).enroll(
            courseId: widget.enrollArgs.course.id,
            batchId: widget.enrollArgs.batch.id,
            installmentPlan: _plan,
          );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('报名成功')));
        context.go('/my-courses');
      }
    } on DioException catch (e) {
      final err = e.error;
      final msg = err is ApiException ? err.message : '报名失败';
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final course = widget.enrollArgs.course;
    final batch = widget.enrollArgs.batch;
    return Scaffold(
      appBar: AppBar(title: const Text('报名支付')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(course.title, style: const TextStyle(fontSize: 18)),
            Text('班级：${batch.startDate} ~ ${batch.endDate}'),
            Text('总价：¥${course.price.toStringAsFixed(0)}'),
            const SizedBox(height: 16),
            const Text('分期选项（Mock）'),
            RadioListTile(value: 'full', groupValue: _plan, onChanged: (v) => setState(() => _plan = v!), title: const Text('一次性付清')),
            RadioListTile(value: '3', groupValue: _plan, onChanged: (v) => setState(() => _plan = v!), title: const Text('3 期分期')),
            RadioListTile(value: '6', groupValue: _plan, onChanged: (v) => setState(() => _plan = v!), title: const Text('6 期分期')),
            const Spacer(),
            FilledButton(
              onPressed: _loading ? null : _submit,
              child: Text(_loading ? '提交中...' : '确认报名（Mock 支付）'),
            ),
          ],
        ),
      ),
    );
  }
}
