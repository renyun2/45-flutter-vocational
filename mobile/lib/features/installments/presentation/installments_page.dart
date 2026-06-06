import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

class InstallmentsPage extends ConsumerWidget {
  const InstallmentsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('分期账单')),
      body: FutureBuilder<List<Installment>>(
        future: ref.read(vocationalRepositoryProvider).fetchInstallments(),
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          final list = snap.data ?? [];
          if (list.isEmpty) return const Center(child: Text('暂无分期账单'));
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, i) {
              final item = list[i];
              final paid = item.status == 'paid';
              return ListTile(
                title: Text('${item.courseTitle} · 第${item.periodNo}期'),
                subtitle: Text('应付 ¥${item.amount.toStringAsFixed(2)} · 到期 ${item.dueDate}'),
                trailing: Chip(
                  label: Text(paid ? '已扣款' : '待扣款'),
                  backgroundColor: paid ? Colors.green.shade100 : Colors.orange.shade100,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
