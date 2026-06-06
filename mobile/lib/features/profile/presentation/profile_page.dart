import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../auth/application/auth_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('个人中心')),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text(user?.nickname ?? ''),
            subtitle: Text(user?.phone ?? ''),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.menu_book),
            title: const Text('我的学习'),
            onTap: () => context.go('/my-courses'),
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium),
            title: const Text('我的证书'),
            onTap: () => context.push('/certificates'),
          ),
          ListTile(
            leading: const Icon(Icons.work),
            title: const Text('就业推荐'),
            onTap: () => context.push('/jobs'),
          ),
          ListTile(
            leading: const Icon(Icons.question_answer),
            title: const Text('讲师答疑'),
            onTap: () => context.push('/qa'),
          ),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('分期账单'),
            onTap: () => context.push('/installments'),
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('消息'),
            onTap: () => context.push('/messages'),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('设置'),
            onTap: () => context.push('/settings'),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('退出登录'),
            onTap: () async {
              await ref.read(authProvider.notifier).logout();
              if (context.mounted) context.go('/login');
            },
          ),
        ],
      ),
    );
  }
}
