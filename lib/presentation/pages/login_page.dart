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
            colors: [AppColors.skyBlue, AppColors.blue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset('assets/images/soranonaka_logo.png'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 56),
                  child: ElevatedButton(
                    onPressed: () => {
                      context.goNamed(RouteConfigs.home.name),
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: AppColors.white,
                      elevation: 7.5,
                      shadowColor: Colors.grey.withOpacity(0.75),
                    ),
                    child: Text(
                      '同意してはじめる',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkGrey,
                      ),
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
