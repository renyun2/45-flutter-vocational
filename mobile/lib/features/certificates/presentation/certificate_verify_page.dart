import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../../../data/repositories/vocational_repository.dart';

class CertificateVerifyPage extends ConsumerStatefulWidget {
  const CertificateVerifyPage({super.key});

  @override
  ConsumerState<CertificateVerifyPage> createState() => _CertificateVerifyPageState();
}

class _CertificateVerifyPageState extends ConsumerState<CertificateVerifyPage> {
  final _certNo = TextEditingController();
  var _loading = false;
  Map<String, dynamic>? _result;
  String? _error;

  Future<void> _verify() async {
    setState(() {
      _loading = true;
      _result = null;
      _error = null;
    });
    try {
      final cert = await ref.read(vocationalRepositoryProvider).verifyCertificate(_certNo.text.trim());
      setState(() => _result = {
            'certNo': cert.certNo,
            'courseName': cert.courseName,
            'holderName': cert.holderName,
            'issuedAt': cert.issuedAt,
          });
    } on DioException catch (e) {
      final err = e.error;
      setState(() => _error = err is ApiException ? err.message : '查询失败');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void dispose() {
    _certNo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('证书查询')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _certNo,
              decoration: const InputDecoration(labelText: '证书编号', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: _loading ? null : _verify,
              child: Text(_loading ? '查询中...' : '验证'),
            ),
            const SizedBox(height: 24),
            if (_error != null) Text(_error!, style: const TextStyle(color: Colors.red)),
            if (_result != null) ...[
              const Text('验证通过', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
              Text('编号：${_result!['certNo']}'),
              Text('课程：${_result!['courseName']}'),
              Text('持有人：${_result!['holderName']}'),
              Text('颁发：${_result!['issuedAt']}'),
            ],
          ],
        ),
      ),
    );
  }
}
