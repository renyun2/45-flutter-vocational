import 'package:flutter/material.dart';

import '../../../core/config/api_config.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('设置')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('API 地址'),
            subtitle: Text(ApiConfig.baseUrl),
          ),
          const ListTile(
            title: Text('Web 兼容说明'),
            subtitle: Text('直播=回放 URL；模考=前端 Timer；证书=编号查询'),
          ),
        ],
      ),
    );
  }
}
