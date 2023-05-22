import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/theme/app_color.dart';
import 'package:i_potato_timer/theme/text_theme.dart';

abstract class AppTheme {
  static ThemeData appTheme() => ThemeData(
        primaryColor: AppColor.primaryColor,
        secondaryHeaderColor: AppColor.secondaryColor,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColor.primaryFloatingActionButton,
        ),
        scaffoldBackgroundColor: AppColor.backgroundColor,
        cardColor: AppColor.cardColor,
        dialogTheme: const DialogTheme(
          backgroundColor: AppColor.cardColor,
        ),
        disabledColor: AppColor.inactiveColor,
        fontFamily: AppTextTheme.defaultFontFamily,
        textTheme: AppTextTheme.defaultTextTheme(),
        appBarTheme: const AppBarTheme(
          color: AppColor.secondaryColor,
        ),
        buttonTheme: const ButtonThemeData(buttonColor: AppColor.buttonColor),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.primaryColor, width: 2,),
            borderRadius: BorderRadius.circular(4.r),
          ),
          labelStyle: AppTextTheme.labelSmall.copyWith(
            color: AppColor.primaryColor,
            fontWeight: FontWeight.w500,
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.inactiveColor),
            borderRadius: BorderRadius.circular(4.r),
          ),
          hintStyle: AppTextTheme.bodyMedium.copyWith(
            color: AppColor.inactiveColor,
          ),
        ),
      );
}
