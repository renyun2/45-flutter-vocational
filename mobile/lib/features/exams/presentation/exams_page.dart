import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

class ExamsPage extends ConsumerWidget {
  const ExamsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('模考列表'),
        actions: [
          IconButton(icon: const Icon(Icons.show_chart), onPressed: () => context.push('/scores')),
        ],
      ),
      body: FutureBuilder<List<ExamListItem>>(
        future: ref.read(vocationalRepositoryProvider).fetchExams(),
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          final list = snap.data ?? [];
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, i) {
              final e = list[i];
              return ListTile(
                title: Text(e.title),
                subtitle: Text('${e.durationMinutes} 分钟 · 及格 ${e.passScore} 分'),
                trailing: const Icon(Icons.timer),
                onTap: () => context.push('/exam/${e.id}'),
              );
            },
          );
        },
      ),
    );
  }
}
