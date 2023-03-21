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
            const Gap(15),
            SizedBox(
              height: SizeConfig.instance.blockSizeVertical * 39,
              child: Swiper(
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    child: Column(
                      children: const [],
                    ),
                  );
                },
                loop: true,
                autoplay: false, // TODO：trueにする
                itemCount: 5,
                viewportFraction: 0.75,
                scale: 0.9,
                onIndexChanged: (value) => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
