import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:soranonaka/utils/app_values.dart';

import '../size_config.dart';

// ジブンノキモチ画面
class MyFeelingsPage extends ConsumerWidget {
  const MyFeelingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig.instance.init(context);
    // TODO：消す
    final formattedDate = DateFormat('yyyy/MM/dd HH:mm').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: const Text('ロゴ'),
      ),
      body: Container(
        color: AppColors.skyBlue,
        child: SingleChildScrollView(
          child: Container(
            color: AppColors.skyBlue,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: Column(
                children: [
                  // このPaddingの塊が１行になる
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Wrap(
                            direction: Axis.horizontal,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 17.0, bottom: 5.0),
                                    child: Text(formattedDate),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        right: 20.0, bottom: 5.0),
                                    child: Text('☀️'),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Wrap(
                                  spacing: 1.0,
                                  runSpacing: 2.0,
                                  direction: Axis.horizontal,
                                  children: [
                                    emotionChip('成長', AppColors.orange,
                                        AppColors.darkGrey),
                                    emotionChip('喜び', AppColors.orange,
                                        AppColors.darkGrey),
                                    emotionChip('たくさんの幸せ', AppColors.orange,
                                        AppColors.darkGrey),
                                    emotionChip('食生活の向上', AppColors.orange,
                                        AppColors.darkGrey),
                                    emotionChip('食生活の向上', AppColors.orange,
                                        AppColors.darkGrey),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // このPaddingの塊が１行になる
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Wrap(
                            direction: Axis.horizontal,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 17.0, bottom: 5.0),
                                    child: Text(formattedDate),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        right: 20.0, bottom: 5.0),
                                    child: Text('☔️'),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Wrap(
                                  spacing: 1.0,
                                  runSpacing: 2.0,
                                  direction: Axis.horizontal,
                                  children: [
                                    emotionChip(
                                        '失敗', AppColors.blue, AppColors.white),
                                    emotionChip('友人との喧嘩', AppColors.blue,
                                        AppColors.white),
                                    emotionChip('家族と疎遠', AppColors.blue,
                                        AppColors.white),
                                    emotionChip('マイナス', AppColors.blue,
                                        AppColors.white),
                                    emotionChip(
                                        '敗北', AppColors.blue, AppColors.white),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // このPaddingの塊が１行になる
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Wrap(
                            direction: Axis.horizontal,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 17.0, bottom: 5.0),
                                    child: Text(formattedDate),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        right: 20.0, bottom: 5.0),
                                    child: Text('🌥'),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Wrap(
                                  spacing: 1.0,
                                  runSpacing: 2.0,
                                  direction: Axis.horizontal,
                                  children: [
                                    emotionChip('緊張', AppColors.grey,
                                        AppColors.darkGrey),
                                    emotionChip('不安', AppColors.grey,
                                        AppColors.darkGrey),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // このPaddingの塊が１行になる
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Wrap(
                            direction: Axis.horizontal,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 17.0, bottom: 5.0),
                                    child: Text(formattedDate),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        right: 20.0, bottom: 5.0),
                                    child: Text('☀️'),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Wrap(
                                  spacing: 1.0,
                                  runSpacing: 2.0,
                                  direction: Axis.horizontal,
                                  children: [
                                    emotionChip('成長', AppColors.orange,
                                        AppColors.darkGrey),
                                    emotionChip('喜び', AppColors.orange,
                                        AppColors.darkGrey),
                                    emotionChip('たくさんの幸せ', AppColors.orange,
                                        AppColors.darkGrey),
                                    emotionChip('食生活の向上', AppColors.orange,
                                        AppColors.darkGrey),
                                    emotionChip('食生活の向上', AppColors.orange,
                                        AppColors.darkGrey),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // このPaddingの塊が１行になる
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Wrap(
                            direction: Axis.horizontal,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 17.0, bottom: 5.0),
                                    child: Text(formattedDate),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        right: 20.0, bottom: 5.0),
                                    child: Text('🌥'),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Wrap(
                                  spacing: 1.0,
                                  runSpacing: 2.0,
                                  direction: Axis.horizontal,
                                  children: [
                                    emotionChip('緊張', AppColors.grey,
                                        AppColors.darkGrey),
                                    emotionChip('不安', AppColors.grey,
                                        AppColors.darkGrey),
                                    emotionChip('緊張', AppColors.grey,
                                        AppColors.darkGrey),
                                    emotionChip('不安', AppColors.grey,
                                        AppColors.darkGrey),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
