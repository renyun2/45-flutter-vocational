import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

class JobsPage extends ConsumerWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('就业推荐')),
      body: FutureBuilder<List<Job>>(
        future: ref.read(vocationalRepositoryProvider).fetchJobs(),
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          final list = snap.data ?? [];
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, i) {
              final j = list[i];
              return ListTile(
                title: Text(j.title),
                subtitle: Text('${j.company} · ${j.city} · ${j.salaryRange}'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => context.push('/job/${j.id}'),
              );
            },
          );
        },
      ),
    );
  }
}
