import 'package:flutter/material.dart';
import '/core/theme/app_color.dart';

class AppTextStyle {
  static AppTextStyle instance = AppTextStyle();

  TextStyle displayLarge = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  TextStyle displayMedium = TextStyle(
    color: AppColor.maleColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  TextStyle displaySmall = TextStyle(
    color: AppColor.nameColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  TextStyle headlineLarge = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
  TextStyle headlineMedium = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  TextStyle headlineSmall = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  TextStyle titleLarge = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColor.secondaryColor,
    fontSize: 16,
  );
  TextStyle titleMedium = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColor.femaleColor,
    fontSize: 12,
  );
  TextStyle titleSmall = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 14,
  );
  TextStyle labelLarge = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w700
  );
  TextStyle labelMedium = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w400
  );
  TextStyle labelSmall = TextStyle(
    color: AppColor.attrColor,
    fontSize: 10,
    fontWeight: FontWeight.w400
  );
  TextStyle bodyLarge = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 24,
    fontWeight: FontWeight.w700
  );
  TextStyle bodyMedium = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w400
  );
  TextStyle bodySmall = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 10,
    fontWeight: FontWeight.w300
  );
}

Widget textThemeSample(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "displayLarge",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          "displayMedium",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          "displaySmall",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          "headlineLarge",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          "headlineMedium",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          "headlineSmall",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          "titleLarge",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          "titleMedium",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          "titleSmall",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          "labelLarge",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          "labelMedium",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Text(
          "labelSmall",
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Text(
          "bodyLarge",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "bodyMedium",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "bodySmall",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    ),
  );
}
