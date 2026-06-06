import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

class AssignmentsPage extends ConsumerWidget {
  const AssignmentsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('作业列表')),
      body: FutureBuilder<List<Assignment>>(
        future: ref.read(vocationalRepositoryProvider).fetchAssignments(),
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          final list = snap.data ?? [];
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, i) {
              final a = list[i];
              return ListTile(
                title: Text(a.title),
                subtitle: Text('${a.courseTitle} · 截止 ${a.dueDate}'),
                trailing: a.submitted ? const Icon(Icons.check, color: Colors.green) : null,
                onTap: () => context.push('/assignment/${a.id}'),
              );
            },
          );
        },
      ),
    );
  }
}
