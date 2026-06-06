import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

class MyCoursesPage extends ConsumerWidget {
  const MyCoursesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的学习'),
        actions: [
          IconButton(icon: const Icon(Icons.assignment), onPressed: () => context.push('/assignments')),
        ],
      ),
      body: FutureBuilder<List<Enrollment>>(
        future: ref.read(vocationalRepositoryProvider).fetchEnrollments(),
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          final list = snap.data ?? [];
          if (list.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('暂无报名课程'),
                  const SizedBox(height: 12),
                  FilledButton(onPressed: () => context.push('/courses'), child: const Text('去选课')),
                ],
              ),
            );
          }
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, i) {
              final e = list[i];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: ListTile(
                  title: Text(e.courseTitle),
                  subtitle: Text('${e.startDate} ~ ${e.endDate}\n${e.schedule}'),
                  isThreeLine: true,
                  trailing: const Icon(Icons.play_lesson),
                  onTap: () => _openLessons(context, ref, e.courseId),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future<void> _openLessons(BuildContext context, WidgetRef ref, String courseId) async {
    final lessons = await ref.read(vocationalRepositoryProvider).fetchCourseLessons(courseId);
    if (!context.mounted) return;
    if (lessons.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('暂无课时')));
      return;
    }
    context.push('/lesson/${lessons.first.id}');
  }
}
