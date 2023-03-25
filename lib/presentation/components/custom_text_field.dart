import 'package:flutter/material.dart';

import '../../utils/app_values.dart';

/// アプリ内共通で使用するテキストフィールド
class CustomTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final bool isMultiLine;

  /// param1 -> labelText：テキストフィールドの見出しに使用する文字
  /// param2 -> hintText：ウォーターマーク
  const CustomTextField({
    required this.labelText,
    required this.controller,
    this.hintText = '',
    this.isMultiLine = false,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextSelectionTheme(
      data: TextSelectionThemeData(
        selectionColor: AppColors.skyBlue,
        selectionHandleColor: AppColors.skyBlue,
      ),
      child: TextField(
        keyboardType: widget.isMultiLine ? TextInputType.multiline : null,
        maxLines: widget.isMultiLine ? 5 : 1,
        cursorColor: AppColors.blue,
        controller: widget.controller,
        style: TextStyle(
          color: AppColors.darkGrey,
        ),
        decoration: InputDecoration(
          // contentPadding:
          //     widget.isMultiLine ? const EdgeInsets.only(top: 100) : null,
          focusColor: AppColors.blue,
          fillColor: AppColors.white,
          hoverColor: AppColors.blue,
          filled: true,
          labelText: widget.labelText,
          hintText: widget.hintText,
          labelStyle: TextStyle(
            color: AppColors.grey,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              width: 1,
              color: AppColors.blue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              width: 1,
              color: AppColors.blue,
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
