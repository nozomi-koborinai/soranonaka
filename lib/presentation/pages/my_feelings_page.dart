import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:soranonaka/utils/app_values.dart';

import '../size_config.dart';

// // ジブンノキモチ画面
// class MyFeelingsPage extends ConsumerWidget {
//   const MyFeelingsPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     SizeConfig.instance.init(context);
//     // TODO：消す
//     final formattedDate = DateFormat('yyyy/MM/dd HH:mm').format(DateTime.now());

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('ロゴ'),
//       ),
//       body: Container(
//         color: AppColors.skyBlue,
//         child: SingleChildScrollView(
//           child: Container(
//             color: AppColors.skyBlue,
//             height: SizeConfig.instance.screenHeight,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 7.0),
//               child: Column(
//                 children: [
//                   // このPaddingの塊が１行になる
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 5),
//                     child: SizedBox(
//                       height: SizeConfig.instance.blockSizeVertical * 12.0,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: AppColors.white,
//                           borderRadius: BorderRadius.circular(25.0),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 17.0, bottom: 5.0),
//                                   child: Text(formattedDate),
//                                 ),
//                                 const Padding(
//                                   padding:
//                                       EdgeInsets.only(right: 20.0, bottom: 5.0),
//                                   child: Text('☀️'),
//                                 )
//                               ],
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 12.0),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 0.5),
//                                     child: Container(
//                                       height: 50,
//                                       width: 70,
//                                       decoration: BoxDecoration(
//                                         color: AppColors.orange,
//                                         borderRadius:
//                                             BorderRadius.circular(15.0),
//                                       ),
//                                       child: Center(
//                                           child: Text(
//                                         '成長',
//                                         style: TextStyle(
//                                             color: AppColors.darkGrey),
//                                       )),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 0.5),
//                                     child: Container(
//                                       height: 50,
//                                       width: 70,
//                                       decoration: BoxDecoration(
//                                         color: AppColors.orange,
//                                         borderRadius:
//                                             BorderRadius.circular(15.0),
//                                       ),
//                                       child: Center(
//                                           child: Text(
//                                         '喜び',
//                                         style: TextStyle(
//                                             color: AppColors.darkGrey),
//                                       )),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 0.5),
//                                     child: Container(
//                                       height: 50,
//                                       width: 70,
//                                       decoration: BoxDecoration(
//                                         color: AppColors.orange,
//                                         borderRadius:
//                                             BorderRadius.circular(15.0),
//                                       ),
//                                       child: Center(
//                                           child: Text(
//                                         'たくさんの幸せ',
//                                         style: TextStyle(
//                                             color: AppColors.darkGrey),
//                                       )),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 0.5),
//                                     child: Container(
//                                       height: 50,
//                                       width: 70,
//                                       decoration: BoxDecoration(
//                                         color: AppColors.orange,
//                                         borderRadius:
//                                             BorderRadius.circular(15.0),
//                                       ),
//                                       child: Center(
//                                           child: Text(
//                                         '食生活の向上',
//                                         style: TextStyle(
//                                             color: AppColors.darkGrey),
//                                       )),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 0.5),
//                                     child: Container(
//                                       height: 50,
//                                       width: 70,
//                                       decoration: BoxDecoration(
//                                         color: AppColors.orange,
//                                         borderRadius:
//                                             BorderRadius.circular(15.0),
//                                       ),
//                                       child: Center(
//                                           child: Text(
//                                         '食生活の向上',
//                                         style: TextStyle(
//                                             color: AppColors.darkGrey),
//                                       )),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   // このPaddingの塊が１行になる
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 5),
//                     child: SizedBox(
//                       height: SizeConfig.instance.blockSizeVertical * 12.0,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: AppColors.white,
//                           borderRadius: BorderRadius.circular(25.0),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 17.0, bottom: 5.0),
//                                   child: Text(formattedDate),
//                                 ),
//                                 const Padding(
//                                   padding:
//                                       EdgeInsets.only(right: 20.0, bottom: 5.0),
//                                   child: Text('☔️'),
//                                 )
//                               ],
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 12.0),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.blue,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '失敗の連続',
//                                       style: TextStyle(color: AppColors.white),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.blue,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '料理が作れない',
//                                       style: TextStyle(color: AppColors.white),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.blue,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '朝起きるのが辛い',
//                                       style: TextStyle(color: AppColors.white),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.blue,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '恐怖',
//                                       style: TextStyle(color: AppColors.white),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.blue,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '楽しみがない',
//                                       style: TextStyle(color: AppColors.white),
//                                     )),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   // このPaddingの塊が１行になる
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 5),
//                     child: SizedBox(
//                       height: SizeConfig.instance.blockSizeVertical * 12.0,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: AppColors.white,
//                           borderRadius: BorderRadius.circular(25.0),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 17.0, bottom: 5.0),
//                                   child: Text(formattedDate),
//                                 ),
//                                 const Padding(
//                                   padding:
//                                       EdgeInsets.only(right: 20.0, bottom: 5.0),
//                                   child: Text('🌥'),
//                                 )
//                               ],
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 12.0),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.grey,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '将来への不安',
//                                       style:
//                                           TextStyle(color: AppColors.darkGrey),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.grey,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '他人の視線',
//                                       style:
//                                           TextStyle(color: AppColors.darkGrey),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.grey,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '不安',
//                                       style:
//                                           TextStyle(color: AppColors.darkGrey),
//                                     )),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   // このPaddingの塊が１行になる
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 5),
//                     child: SizedBox(
//                       height: SizeConfig.instance.blockSizeVertical * 12.0,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: AppColors.white,
//                           borderRadius: BorderRadius.circular(25.0),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 17.0, bottom: 5.0),
//                                   child: Text(formattedDate),
//                                 ),
//                                 const Padding(
//                                   padding:
//                                       EdgeInsets.only(right: 20.0, bottom: 5.0),
//                                   child: Text('☀️'),
//                                 )
//                               ],
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 12.0),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.orange,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '成長',
//                                       style:
//                                           TextStyle(color: AppColors.darkGrey),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.orange,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '喜び',
//                                       style:
//                                           TextStyle(color: AppColors.darkGrey),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.orange,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       'たくさんの幸せ',
//                                       style:
//                                           TextStyle(color: AppColors.darkGrey),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.orange,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '食生活の向上',
//                                       style:
//                                           TextStyle(color: AppColors.darkGrey),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.orange,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '食生活の向上',
//                                       style:
//                                           TextStyle(color: AppColors.darkGrey),
//                                     )),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   // このPaddingの塊が１行になる
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 5),
//                     child: SizedBox(
//                       height: SizeConfig.instance.blockSizeVertical * 12.0,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: AppColors.white,
//                           borderRadius: BorderRadius.circular(25.0),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 17.0, bottom: 5.0),
//                                   child: Text(formattedDate),
//                                 ),
//                                 const Padding(
//                                   padding:
//                                       EdgeInsets.only(right: 20.0, bottom: 5.0),
//                                   child: Text('☔️'),
//                                 )
//                               ],
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 12.0),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.blue,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '失敗の連続',
//                                       style: TextStyle(color: AppColors.white),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.blue,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '料理が作れない',
//                                       style: TextStyle(color: AppColors.white),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.blue,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '朝起きるのが辛い',
//                                       style: TextStyle(color: AppColors.white),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.blue,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '恐怖',
//                                       style: TextStyle(color: AppColors.white),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.blue,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '楽しみがない',
//                                       style: TextStyle(color: AppColors.white),
//                                     )),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   // このPaddingの塊が１行になる
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 5),
//                     child: SizedBox(
//                       height: SizeConfig.instance.blockSizeVertical * 12.0,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: AppColors.white,
//                           borderRadius: BorderRadius.circular(25.0),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 17.0, bottom: 5.0),
//                                   child: Text(formattedDate),
//                                 ),
//                                 const Padding(
//                                   padding:
//                                       EdgeInsets.only(right: 20.0, bottom: 5.0),
//                                   child: Text('🌥'),
//                                 )
//                               ],
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 12.0),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.grey,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '将来への不安',
//                                       style:
//                                           TextStyle(color: AppColors.darkGrey),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.grey,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '他人の視線',
//                                       style:
//                                           TextStyle(color: AppColors.darkGrey),
//                                     )),
//                                   ),
//                                   Container(
//                                     height: 50,
//                                     width: 70,
//                                     decoration: BoxDecoration(
//                                       color: AppColors.grey,
//                                       borderRadius: BorderRadius.circular(15.0),
//                                     ),
//                                     child: Center(
//                                         child: Text(
//                                       '不安',
//                                       style:
//                                           TextStyle(color: AppColors.darkGrey),
//                                     )),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

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
