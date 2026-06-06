import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../data/repositories/vocational_repository.dart';

class CourseDetailPage extends ConsumerWidget {
  const CourseDetailPage({super.key, required this.courseId});
  final String courseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.read(vocationalRepositoryProvider).fetchCourse(courseId),
      builder: (context, snap) {
        if (!snap.hasData) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(child: CircularProgressIndicator()),
          );
        }
        final course = snap.data!;
        return Scaffold(
          appBar: AppBar(title: Text(course.title)),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text('${course.category} · ${course.difficulty} · 讲师：${course.instructor}'),
              const SizedBox(height: 8),
              Text(course.description),
              const SizedBox(height: 8),
              Text('价格：¥${course.price.toStringAsFixed(0)}', style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const Text('课程大纲', style: TextStyle(fontWeight: FontWeight.bold)),
              ...course.outline.map((ch) => ListTile(
                    dense: true,
                    title: Text(ch.chapter),
                    subtitle: Text(ch.items.join(' · ')),
                  )),
              const SizedBox(height: 16),
              if (course.trialVideoUrl.isNotEmpty)
                ListTile(
                  leading: const Icon(Icons.play_circle),
                  title: const Text('试听（回放 URL）'),
                  subtitle: Text(course.trialVideoUrl, maxLines: 2, overflow: TextOverflow.ellipsis),
                ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () => context.push('/course/$courseId/batches'),
                child: const Text('选择班级报名'),
              ),
            ],
          ),
        );
      },
    );
  }
}
