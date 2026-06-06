import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

final hotCoursesProvider = FutureProvider<List<Course>>((ref) {
  return ref.watch(vocationalRepositoryProvider).fetchCourses();
});

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coursesAsync = ref.watch(hotCoursesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () => context.push('/courses')),
        ],
      ),
      body: coursesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (courses) {
          final hot = courses.take(6).toList();
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text('热门课程', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              ...hot.map((c) => Card(
                    child: ListTile(
                      title: Text(c.title),
                      subtitle: Text('${c.category} · ¥${c.price.toStringAsFixed(0)}'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () => context.push('/course/${c.id}'),
                    ),
                  )),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                children: [
                  OutlinedButton(onPressed: () => context.push('/jobs'), child: const Text('就业推荐')),
                  OutlinedButton(onPressed: () => context.push('/certificate/verify'), child: const Text('证书查询')),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
