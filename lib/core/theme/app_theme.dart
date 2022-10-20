import 'package:flutter/material.dart';
import '/core/theme/app_color.dart';

import 'app_textstyle.dart';


class AppTheme {
  static final AppTextStyle _textStyle = AppTextStyle.instance;

  static ThemeData light = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: AppColor.primaryColor,
    backgroundColor: AppColor.primaryColor,
    scaffoldBackgroundColor: AppColor.primaryColor,
    primarySwatch: AppColor.primarySwatch,
    textTheme: TextTheme(
      displayLarge: _textStyle.displayLarge,
      displayMedium: _textStyle.displayMedium,
      displaySmall: _textStyle.displaySmall,
      headlineLarge: _textStyle.headlineLarge,
      headlineMedium: _textStyle.headlineMedium,
      headlineSmall: _textStyle.headlineSmall,
      titleLarge: _textStyle.titleLarge,
      titleSmall: _textStyle.titleSmall,
      titleMedium: _textStyle.titleMedium,
      labelLarge: _textStyle.labelLarge,
      labelMedium: _textStyle.labelMedium,
      labelSmall: _textStyle.labelSmall,
      bodyLarge: _textStyle.bodyLarge,
      bodyMedium: _textStyle.bodyMedium,
      bodySmall: _textStyle.bodySmall,
    ),
  );

  static ThemeData dark = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    backgroundColor: AppColor.primaryColorDark,
    scaffoldBackgroundColor: AppColor.primaryColorDark,
    primaryColor: AppColor.primaryColor,
    primarySwatch: AppColor.primarySwatch,
    textTheme: TextTheme(
      displayLarge: _textStyle.displayLarge.copyWith(color: AppColor.secondaryColorDark),
      displayMedium: _textStyle.displayMedium.copyWith(color: AppColor.secondaryColorDark),
      displaySmall: _textStyle.displaySmall.copyWith(color: AppColor.secondaryColorDark),
      headlineLarge: _textStyle.headlineLarge.copyWith(color: AppColor.secondaryColorDark),
      headlineMedium: _textStyle.headlineMedium.copyWith(color: AppColor.secondaryColorDark),
      headlineSmall: _textStyle.headlineSmall.copyWith(color: AppColor.secondaryColorDark),
      titleLarge: _textStyle.titleLarge.copyWith(color: AppColor.secondaryColorDark),
      titleSmall: _textStyle.titleSmall.copyWith(color: AppColor.secondaryColorDark),
      titleMedium: _textStyle.titleMedium.copyWith(color: AppColor.secondaryColorDark),
      labelLarge: _textStyle.labelLarge.copyWith(color: AppColor.secondaryColorDark),
      labelMedium: _textStyle.labelMedium.copyWith(color: Colors.white),
      labelSmall: _textStyle.labelSmall.copyWith(color: AppColor.attrColor),
      bodyLarge: _textStyle.bodyLarge.copyWith(color: AppColor.secondaryColorDark),
      bodyMedium: _textStyle.bodyMedium.copyWith(color: AppColor.secondaryColorDark),
      bodySmall: _textStyle.bodySmall.copyWith(color: AppColor.attrColor),
    ),
  );
}
