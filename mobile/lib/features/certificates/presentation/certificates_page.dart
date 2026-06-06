import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

class CertificatesPage extends ConsumerWidget {
  const CertificatesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的证书'),
        actions: [
          IconButton(
            icon: const Icon(Icons.verified),
            onPressed: () => context.push('/certificate/verify'),
          ),
        ],
      ),
      body: FutureBuilder<List<Certificate>>(
        future: ref.read(vocationalRepositoryProvider).fetchCertificates(),
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          final list = snap.data ?? [];
          if (list.isEmpty) return const Center(child: Text('暂无证书，模考及格后自动颁发'));
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, i) {
              final c = list[i];
              return ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: Text(c.courseName),
                subtitle: Text('${c.certNo}\n${c.issuedAt}'),
                isThreeLine: true,
              );
            },
          );
        },
      ),
    );
  }
}
