import 'package:flutter/material.dart';
import 'package:i_potato_timer/constants/app_constants.dart';
import 'package:i_potato_timer/presentation/theme/app_color.dart';
import 'package:i_potato_timer/presentation/theme/text_theme.dart';

class AppName extends StatelessWidget {
  const AppName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppConstants.appName,
      style: AppTextTheme.headlineMedium.copyWith(
        color: AppColor.secondaryColor,
      ),
    );
  }
}
