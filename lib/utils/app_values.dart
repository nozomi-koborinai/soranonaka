import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

/// アプリ内共通で使用する色
class AppColors {
  static final Color skyBlue = HexColor('#ADD8E6');
  static final Color darkGrey = HexColor('#575656');
  static final Color softPink = HexColor('#FCDBE2');
  static final Color orange = HexColor('#FFA629');
  static final Color grey = HexColor('#B3B3B3');
  static final Color blue = HexColor('#0D99FF');
  static final Color white = HexColor('#ffffff');
  static const Color black = Colors.black;
}

/// アプリ内共通で使用するメッセージ
class AppMessages {
  static const String ok = 'OK';
  static const String error = 'エラー';
  static const String yes = 'はい';
  static const String no = 'いいえ';
}
