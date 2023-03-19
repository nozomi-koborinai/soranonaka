import 'package:flutter/material.dart';
import 'package:soranonaka/utils/app_values.dart';

/// アンカーテキスト
class AnchorText extends StatelessWidget {
  const AnchorText(this.text, {super.key});

  final String text;

  static TextStyle anchorStyleText(BuildContext context) => TextStyle(
      decoration: TextDecoration.underline,
      color: AppColors.white,
      decorationColor: AppColors.darkGrey);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: anchorStyleText(context),
    );
  }
}
