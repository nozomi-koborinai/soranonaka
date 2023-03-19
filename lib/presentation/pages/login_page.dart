import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:soranonaka/presentation/router_config.dart';
import 'package:soranonaka/utils/app_values.dart';

import '../components/agreement.dart';

/// ログイン画面
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.skyBlue,
              AppColors.blue,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'ここらへんにアイコン',
                  style: TextStyle(color: AppColors.white),
                ),
                const Gap(200),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 56),
                  child: ElevatedButton(
                    onPressed: () => {
                      context.goNamed(RouteConfigs.home.name),
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: AppColors.darkGrey,
                      backgroundColor: AppColors.softPink,
                    ),
                    child: const Text(
                      '同意してはじめる',
                    ),
                  ),
                ),
                const Gap(12),
                const Agreement()
              ],
            )
          ],
        ),
      ),
    );
  }
}