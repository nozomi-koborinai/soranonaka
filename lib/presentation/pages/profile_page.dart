import 'package:flutter/material.dart';
import 'package:soranonaka/utils/app_values.dart';

// プロフィール画面
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ロゴ'),
      ),
      body: Container(
        color: AppColors.orange,
      ),
    );
  }
}
