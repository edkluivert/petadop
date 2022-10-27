import 'package:flutter/material.dart';
import '/core/theme/app_color.dart';

import 'app_textstyle.dart';

//
// class AppThemes {
//
//   static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
//   static final Color _darkFocusColor = Colors.white.withOpacity(0.12);
//
//   static ThemeData lightThemeData =
//   themeData(lightColorScheme, _lightFocusColor);
//   static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);
//
//   static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
//     return ThemeData(
//       fontFamily: 'Poppins',
//       colorScheme: colorScheme,
//       // appBarTheme: AppBarTheme(
//       //   color: colorScheme.primary,
//       //   elevation: 0,
//       //   systemOverlayStyle: colorScheme.brightness,
//       // ),
//       iconTheme: IconThemeData(color: colorScheme.onPrimary),
//       canvasColor: colorScheme.background,
//       scaffoldBackgroundColor: colorScheme.background,
//       highlightColor: Colors.transparent,
//       focusColor: focusColor,
//     );
//   }
//
//
//
//   static const ColorScheme lightColorScheme = ColorScheme(
//     primary: Color(0xFF6200EE),
//     primaryContainer: Color(0xFF640AFF),
//     secondary: Color(0xFF03DAC5),
//     secondaryContainer: Color(0xFF0AE1C5),
//     background: Color(0xFFE6EBEB),
//     surface: Color(0xFFFAFBFB),
//     onBackground: Colors.white,
//     error: Colors.red,
//     onError: Colors.white,
//     onPrimary: Colors.white,
//     onSecondary: Color(0xFF322942),
//     onSurface: Color(0xFF241E30),
//     brightness: Brightness.light,
//   );
//
//   static final ColorScheme darkColorScheme = ColorScheme(
//     primary: Colors.lightBlue,
//     primaryContainer: Colors.lightBlue.shade900,
//     secondary: Colors.yellow,
//     secondaryContainer: Colors.yellow.shade900,
//     background: Color(0xff141A31),
//     surface: Color(0xff1E2746),
//     onBackground: Color(0x0DFFFFFF),
//     // White with 0.05 opacity
//     error: Colors.red,
//     onError: Colors.white,
//     onPrimary: Colors.white,
//     onSecondary: Colors.white,
//     onSurface: Colors.white,
//     brightness: Brightness.dark,
//   );
// }


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
