import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/api_config.dart';
import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

class CoursesPage extends ConsumerStatefulWidget {
  const CoursesPage({super.key});

  @override
  ConsumerState<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends ConsumerState<CoursesPage> {
  String? _category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('课程列表')),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                FilterChip(
                  label: const Text('全部'),
                  selected: _category == null,
                  onSelected: (_) => setState(() => _category = null),
                ),
                ...ApiConfig.categories.map((c) => Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: FilterChip(
                        label: Text(c),
                        selected: _category == c,
                        onSelected: (_) => setState(() => _category = c),
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Course>>(
              future: ref.read(vocationalRepositoryProvider).fetchCourses(category: _category),
              builder: (context, snap) {
                if (snap.connectionState != ConnectionState.done) {
                  return const Center(child: CircularProgressIndicator());
                }
                final courses = snap.data ?? [];
                return ListView.builder(
                  itemCount: courses.length,
                  itemBuilder: (_, i) {
                    final c = courses[i];
                    return ListTile(
                      title: Text(c.title),
                      subtitle: Text('${c.category} · ${c.difficulty} · ¥${c.price.toStringAsFixed(0)}'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () => context.push('/course/${c.id}'),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
