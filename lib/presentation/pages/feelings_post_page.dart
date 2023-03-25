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

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(),
      body: Container(
        color: AppColors.skyBlue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          child: Column(
            children: [
              // このSizedBoxの塊が１行になる
              SizedBox(
                child: Container(
                  height: 175,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Wrap(
                          spacing: 1.0,
                          runSpacing: 2.0,
                          direction: Axis.horizontal,
                          children: [
                            emotionChip(
                              '成長',
                              AppColors.orange,
                              AppColors.darkGrey,
                            ),
                            emotionChip(
                              '喜び',
                              AppColors.orange,
                              AppColors.darkGrey,
                            ),
                            emotionChip('たくさんの幸せ', AppColors.orange,
                                AppColors.darkGrey),
                            emotionChip(
                              '食生活の向上',
                              AppColors.orange,
                              AppColors.darkGrey,
                            ),
                            emotionChip(
                              '食生活の向上',
                              AppColors.orange,
                              AppColors.darkGrey,
                            ),
                            emotionChip(
                              '喜び',
                              AppColors.orange,
                              AppColors.darkGrey,
                            ),
                            emotionChip('たくさんの幸せ', AppColors.orange,
                                AppColors.darkGrey),
                            emotionChip(
                              '食生活の向上',
                              AppColors.orange,
                              AppColors.darkGrey,
                            ),
                            emotionChip(
                              '食生活の向上',
                              AppColors.orange,
                              AppColors.darkGrey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(20),
              // このSizedBoxの塊が１行になる
              SizedBox(
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 12.0, left: 14.0, bottom: 8),
                            child: Text(
                              '今のアナタのキモチは？',
                              style: TextStyle(color: AppColors.grey),
                            ),
                          ),
                        ],
                      ),
                      // ここは固定の天気ボタン
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () => {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                backgroundColor: AppColors.white,
                                elevation: 7.5,
                                shadowColor: Colors.grey.withOpacity(0.75),
                              ),
                              child: Image.asset(
                                'assets/images/sunny.png',
                                height: 100,
                                width: double.infinity,
                              ),
                            ),
                            const Gap(10),
                            ElevatedButton(
                              onPressed: () => {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                backgroundColor: AppColors.white,
                                elevation: 7.5,
                                shadowColor: Colors.grey.withOpacity(0.75),
                              ),
                              child: Image.asset(
                                'assets/images/cloudy.png',
                                height: 100,
                                width: double.infinity,
                              ),
                            ),
                            const Gap(10),
                            ElevatedButton(
                              onPressed: () => {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                backgroundColor: AppColors.white,
                                elevation: 7.5,
                                shadowColor: Colors.grey.withOpacity(0.75),
                              ),
                              child: Image.asset(
                                'assets/images/rainy.png',
                                height: 100,
                                width: double.infinity,
                              ),
                            ),
                          ],
                        ),
                      )
                      // TODO：↓これは関連ワード取得後のイメージ
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 12.0),
                      //   child: Wrap(
                      //     spacing: 1.0,
                      //     runSpacing: 2.0,
                      //     direction: Axis.horizontal,
                      //     children: [
                      //       emotionChip(
                      //         '成長',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         '喜び',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip('たくさんの幸せ', AppColors.orange,
                      //           AppColors.darkGrey),
                      //       emotionChip(
                      //         '食生活の向上',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         '食生活の向上',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         '喜び',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         'たくさんの幸せ',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         '食生活の向上',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         '食生活の向上',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         '喜び',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         'たくさんの幸せ',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         '食生活の向上',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         '食生活の向上',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         '喜び',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         'たくさんの幸せ',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         '食生活の向上',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //       emotionChip(
                      //         '食生活の向上',
                      //         AppColors.orange,
                      //         AppColors.darkGrey,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              const Gap(15),
              ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: AppColors.white,
                  elevation: 7.5,
                  shadowColor: Colors.grey.withOpacity(0.75),
                ),
                child: Text(
                  '今の気持ちを登録',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// TODO：あとでWidget化
Widget emotionChip(String text, Color chipColor, Color textColor) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0.5),
    child: Opacity(
      opacity: 0.7,
      child: IntrinsicWidth(
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: chipColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                text,
                maxLines: 1,
                style: TextStyle(color: textColor),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
