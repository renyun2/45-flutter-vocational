import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/vocational_repository.dart';

class JobDetailPage extends ConsumerWidget {
  const JobDetailPage({super.key, required this.jobId});
  final String jobId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.read(vocationalRepositoryProvider).fetchJob(jobId),
      builder: (context, snap) {
        if (!snap.hasData) {
          return Scaffold(appBar: AppBar(), body: const Center(child: CircularProgressIndicator()));
        }
        final j = snap.data!;
        return Scaffold(
          appBar: AppBar(title: Text(j.title)),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text(j.company, style: const TextStyle(fontSize: 18)),
              Text('${j.city} · ${j.salaryRange} · ${j.category}'),
              const SizedBox(height: 16),
              const Text('岗位要求', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(j.requirements),
              const SizedBox(height: 16),
              const Text('岗位描述', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(j.description),
            ],
          ),
        );
      },
    );
  }
}
