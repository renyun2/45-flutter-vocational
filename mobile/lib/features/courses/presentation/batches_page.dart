import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/app_router.dart';
import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

class BatchesPage extends ConsumerWidget {
  const BatchesPage({super.key, required this.courseId});
  final String courseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repo = ref.read(vocationalRepositoryProvider);
    return FutureBuilder<(Course, List<Batch>)>(
      future: () async {
        final course = await repo.fetchCourse(courseId);
        final batches = await repo.fetchBatches(courseId: courseId);
        return (course, batches);
      }(),
      builder: (context, snap) {
        if (!snap.hasData) {
          return Scaffold(appBar: AppBar(), body: const Center(child: CircularProgressIndicator()));
        }
        final (course, batches) = snap.data!;
        return Scaffold(
          appBar: AppBar(title: const Text('班级选择')),
          body: ListView.builder(
            itemCount: batches.length,
            itemBuilder: (_, i) {
              final b = batches[i];
              return ListTile(
                title: Text('${b.startDate} ~ ${b.endDate}'),
                subtitle: Text('${b.schedule} · 剩余 ${b.remaining} 名额'),
                enabled: b.remaining > 0,
                trailing: const Icon(Icons.chevron_right),
                onTap: b.remaining > 0
                    ? () => context.push('/enroll', extra: EnrollArgs(course: course, batch: b))
                    : null,
              );
            },
          ),
        );
      },
    );
  }
}
