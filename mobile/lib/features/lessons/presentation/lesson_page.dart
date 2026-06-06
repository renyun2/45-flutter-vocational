import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/network/dio_client.dart';
import '../../../data/repositories/vocational_repository.dart';

class LessonPage extends ConsumerWidget {
  const LessonPage({super.key, required this.lessonId});
  final String lessonId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.read(vocationalRepositoryProvider).fetchLesson(lessonId),
      builder: (context, snap) {
        if (snap.hasError) {
          final err = snap.error;
          if (err is DioException) {
            final apiErr = err.error;
            if (apiErr is ApiException && apiErr.statusCode == 403) {
              return Scaffold(
                appBar: AppBar(title: const Text('课时学习')),
                body: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(apiErr.message),
                      const SizedBox(height: 16),
                      FilledButton(
                        onPressed: () => context.push('/courses'),
                        child: const Text('去报名'),
                      ),
                    ],
                  ),
                ),
              );
            }
          }
          return Scaffold(appBar: AppBar(), body: Center(child: Text('$err')));
        }
        if (!snap.hasData) {
          return Scaffold(appBar: AppBar(), body: const Center(child: CircularProgressIndicator()));
        }
        final lesson = snap.data!;
        return Scaffold(
          appBar: AppBar(title: Text(lesson.title)),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              if (lesson.videoUrl.isNotEmpty)
                ListTile(
                  leading: const Icon(Icons.video_library),
                  title: const Text('回放 URL（替代直播）'),
                  subtitle: Text(lesson.videoUrl),
                ),
              Text('时长：${lesson.durationMinutes} 分钟'),
              const Divider(),
              MarkdownBody(data: lesson.contentMd),
            ],
          ),
        );
      },
    );
  }
}
