import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

class QaPage extends ConsumerStatefulWidget {
  const QaPage({super.key});

  @override
  ConsumerState<QaPage> createState() => _QaPageState();
}

class _QaPageState extends ConsumerState<QaPage> {
  final _question = TextEditingController();
  var _loading = false;
  List<QaThread>? _threads;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final list = await ref.read(vocationalRepositoryProvider).fetchQaThreads();
    if (mounted) setState(() => _threads = list);
  }

  Future<void> _submit() async {
    if (_question.text.trim().isEmpty) return;
    setState(() => _loading = true);
    await ref.read(vocationalRepositoryProvider).postQuestion(_question.text.trim());
    _question.clear();
    await _load();
    if (mounted) setState(() => _loading = false);
  }

  @override
  void dispose() {
    _question.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('讲师答疑')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _question,
                    decoration: const InputDecoration(hintText: '输入问题...', border: OutlineInputBorder()),
                  ),
                ),
                IconButton(onPressed: _loading ? null : _submit, icon: const Icon(Icons.send)),
              ],
            ),
          ),
          Expanded(
            child: _threads == null
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: _threads!.length,
                    itemBuilder: (_, i) {
                      final t = _threads![i];
                      return ListTile(
                        title: Text(t.question),
                        subtitle: t.status == 'answered'
                            ? Text('答：${t.answer}')
                            : const Text('待回复', style: TextStyle(color: Colors.orange)),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
