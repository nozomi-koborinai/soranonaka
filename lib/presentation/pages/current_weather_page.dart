import 'dart:math';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:soranonaka/presentation/size_config.dart';
import 'package:soranonaka/utils/app_values.dart';

// イマノテンキ画面
class CurrentWeatherPage extends ConsumerWidget {
  const CurrentWeatherPage({super.key});

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
      appBar: AppBar(
        title: const Text('ロゴ'),
      ),
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
              child: Swiper(
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        for (final text in texts)
                          Opacity(
                            opacity: 0.4,
                            child: Align(
                              alignment: Alignment(
                                randomValue(),
                                randomValue(),
                              ),
                              child: SizedBox(
                                height: 75,
                                width: 120,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  color: AppColors.orange,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      text,
                                      style: const TextStyle(
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
                loop: true,
                autoplay: false,
                itemCount: 5,
                viewportFraction: 0.85,
                scale: 0.98,
                onIndexChanged: (value) => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
