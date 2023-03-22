import 'package:flutter/material.dart';
import 'package:soranonaka/utils/app_values.dart';

// ジブンノキモチ画面
class MyFeelingsPage extends StatelessWidget {
  const MyFeelingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ロゴ'),
      ),
      body: Container(
        color: AppColors.blue,
      ),
    );
  }
}
