import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soranonaka/util/app_values.dart';

/// テーマプロバイダー
final themeProvider = Provider(
  (ref) {
    return ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      useMaterial3: true,
      bottomSheetTheme: const BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: AppColors.grey,
        ),
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: AppColors.skyBlue,
        titleTextStyle: TextStyle(
          color: AppColors.darkGrey,
        ),
        iconTheme: IconThemeData(
          color: AppColors.darkGrey,
        ),
      ),
    );
  },
);
