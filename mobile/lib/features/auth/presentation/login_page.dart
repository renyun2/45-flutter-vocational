import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/network/dio_client.dart';
import '../application/auth_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _phone = TextEditingController(text: '13800138000');
  final _password = TextEditingController(text: '123456');
  var _loading = false;

  Future<void> _submit() async {
    setState(() => _loading = true);
    try {
      await ref.read(authProvider.notifier).login(_phone.text.trim(), _password.text);
      if (mounted) context.go('/home');
    } on DioException catch (e) {
      final err = e.error;
      final msg = err is ApiException ? err.message : '登录失败';
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  void dispose() {
    _phone.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('登录')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('职业培训报名 App', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 24),
            TextField(
              controller: _phone,
              decoration: const InputDecoration(labelText: '手机号', border: OutlineInputBorder()),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _password,
              decoration: const InputDecoration(labelText: '密码', border: OutlineInputBorder()),
              obscureText: true,
            ),
            const SizedBox(height: 8),
            const Text('演示密码：123456', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: _loading ? null : _submit,
              child: _loading
                  ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2))
                  : const Text('登录'),
            ),
          ],
        ),
      ),
    );
  }
}
