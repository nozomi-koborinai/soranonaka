import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:soranonaka/usecase/user/login_usecase.dart';
import 'package:soranonaka/util/app_values.dart';

import '../component/agreement.dart';

/// ログイン画面
class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                    onPressed: () => ref.read(loginUseCaseProvider).login(),
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
