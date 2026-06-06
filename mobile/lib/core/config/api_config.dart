import 'package:flutter/foundation.dart' show kIsWeb;

class ApiConfig {
  static const _compileTimeBase = String.fromEnvironment(
    'API_BASE',
    defaultValue: '',
  );

  static String get baseUrl {
    if (_compileTimeBase.isNotEmpty) {
      return _compileTimeBase;
    }

    if (kIsWeb) {
      final port = Uri.base.port;
      if (port == 5173 || (port >= 8811 && port <= 8817)) {
        return Uri.base.origin;
      }
      return 'http://127.0.0.1:3032';
    }

    return 'http://localhost:3032';
  }

  static const categories = ['IT', '财会', '技工'];
}
