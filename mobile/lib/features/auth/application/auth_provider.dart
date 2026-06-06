import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/dio_client.dart';
import '../../../core/storage/token_storage.dart';
import '../../../data/models/models.dart';
import '../../../data/repositories/vocational_repository.dart';

class AuthNotifier extends Notifier<UserProfile?> {
  @override
  UserProfile? build() => null;

  Future<void> restore() async {
    final token = await ref.read(tokenStorageProvider).getToken();
    if (token == null || token.isEmpty) return;
    try {
      final res = await ref.read(dioProvider).get('/api/auth/me');
      state = UserProfile.fromJson(res.data['user'] as Map<String, dynamic>);
    } catch (_) {
      await ref.read(tokenStorageProvider).clearToken();
    }
  }

  Future<void> login(String phone, String password) async {
    final repo = ref.read(vocationalRepositoryProvider);
    final result = await repo.login(phone, password);
    await ref.read(tokenStorageProvider).saveToken(result.token);
    state = result.user;
  }

  Future<void> logout() async {
    try {
      await ref.read(vocationalRepositoryProvider).logout();
    } catch (_) {}
    await ref.read(tokenStorageProvider).clearToken();
    state = null;
  }
}

final authProvider = NotifierProvider<AuthNotifier, UserProfile?>(AuthNotifier.new);

class RouterRefreshNotifier extends ChangeNotifier {
  RouterRefreshNotifier(this._ref) {
    _ref.listen(authProvider, (_, __) => notifyListeners());
  }
  final Ref _ref;
}
