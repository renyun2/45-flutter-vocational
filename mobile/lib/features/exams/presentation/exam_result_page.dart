import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/app_router.dart';

class ExamResultPage extends StatelessWidget {
  const ExamResultPage({super.key, required this.result});
  final ExamResultArgs result;

  @override
  Widget build(BuildContext context) {
    final s = result.submission;
    return Scaffold(
      appBar: AppBar(title: const Text('模考结果')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('得分：${s.score.toStringAsFixed(0)} / 100', style: const TextStyle(fontSize: 24)),
            Text('正确：${s.correctCount} / ${s.totalQuestions}'),
            Text(s.passed ? '恭喜及格（≥${s.passScore}）' : '未及格，请继续学习'),
            if (result.certificate != null) ...[
              const SizedBox(height: 16),
              const Text('已颁发证书 Mock：', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('编号：${result.certificate!.certNo}'),
            ],
            const Spacer(),
            FilledButton(onPressed: () => context.go('/exams'), child: const Text('返回模考列表')),
            OutlinedButton(onPressed: () => context.push('/scores'), child: const Text('查看成绩趋势')),
          ],
        ),
      ),
    );
  }
}
