import 'package:flutter/material.dart';
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
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColor.buttonColor
        )
      );
}
