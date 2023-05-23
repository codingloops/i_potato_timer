import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/constants/string_constants.dart';
import 'package:i_potato_timer/presentation/theme/app_color.dart';
import 'package:i_potato_timer/presentation/theme/text_theme.dart';

class FinishedDisplay extends StatelessWidget {
  const FinishedDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          StringConstants.finished,
          style: AppTextTheme.headlineMedium.copyWith(
            color: AppColor.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10.h)
      ],
    );
  }
}
