import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

class MessagesPage extends ConsumerWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('消息')),
      body: FutureBuilder<List<AppNotification>>(
        future: ref.read(vocationalRepositoryProvider).fetchNotifications(),
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          final list = snap.data ?? [];
          if (list.isEmpty) return const Center(child: Text('暂无消息'));
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, i) {
              final n = list[i];
              return ListTile(
                leading: Icon(n.read ? Icons.mark_email_read : Icons.mark_email_unread),
                title: Text(n.title),
                subtitle: Text('${n.body}\n${n.createdAt}'),
                isThreeLine: true,
                onTap: () => ref.read(vocationalRepositoryProvider).markNotificationRead(n.id),
              );
            },
          );
        },
      ),
    );
  }
}
