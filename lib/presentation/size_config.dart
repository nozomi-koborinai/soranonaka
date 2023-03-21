import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {
  // singleTon
  static final instance = SizeConfig._();
  SizeConfig._();

  late double screenWidth;
  late double screenHeight;
  late double blockSizeHorizontal;
  late double blockSizeVertical;

  void init(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}
