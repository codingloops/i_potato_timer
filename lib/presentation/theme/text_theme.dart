import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextTheme {
  static const String defaultFontFamily = 'Roboto';

  static TextTheme defaultTextTheme() => TextTheme(
        displaySmall: AppTextTheme.displaySmall,
        headlineMedium: AppTextTheme.headlineMedium,
        headlineSmall: AppTextTheme.headlineSmall,
        titleLarge: AppTextTheme.titleLarge,
        titleMedium: AppTextTheme.titleMedium,
        titleSmall: AppTextTheme.titleSmall,
        bodyLarge: AppTextTheme.bodyLarge,
        bodyMedium: AppTextTheme.bodyMedium,
        bodySmall: AppTextTheme.bodySmall,
        labelLarge: AppTextTheme.labelLarge,
        labelSmall: AppTextTheme.labelSmall,
      );

  static final TextStyle displaySmall = TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    wordSpacing: 0,
  );

  static final TextStyle headlineMedium = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    wordSpacing: 0,
  );

  static final TextStyle headlineSmall = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    wordSpacing: 0,
  );

  static final TextStyle titleLarge = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    wordSpacing: 0,
  );

  static final TextStyle bodyLarge = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    wordSpacing: 0,
  );

  static final TextStyle bodyMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    wordSpacing: 0,
  );

  static final TextStyle titleMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    wordSpacing: 0,
  );

  static final TextStyle titleSmall = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    wordSpacing: 0,
  );

  static final TextStyle bodySmall = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    wordSpacing: 0,
  );

  static final TextStyle labelSmall = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    wordSpacing: 0,
  );

  static final TextStyle labelLarge = TextStyle(
    fontSize: 14.sp,
    letterSpacing: 1,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    wordSpacing: 0,
  );
}
