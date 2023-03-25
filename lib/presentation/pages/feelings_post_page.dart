import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:soranonaka/presentation/size_config.dart';
import 'package:soranonaka/utils/app_values.dart';

// キモチ投稿画面
class FeelingsPostPage extends ConsumerWidget {
  const FeelingsPostPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig.instance.init(context);
    final random = Random();
    double randomValue() => (random.nextDouble() * 2) - 1;
    // 消す
    final texts = <String>[
      '成長',
      '食生活の向上',
      '楽しい',
      '友人',
      'キャンプ',
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(),
      body: Container(
        color: AppColors.skyBlue,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SizedBox(
                height: SizeConfig.instance.blockSizeVertical * 35,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            const Gap(5),
            SizedBox(
              height: SizeConfig.instance.blockSizeVertical * 40,
            ),
          ],
        ),
      ),
    );
  }
}
