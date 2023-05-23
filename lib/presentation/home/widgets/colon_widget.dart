import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/constants/string_constants.dart';
import 'package:i_potato_timer/presentation/theme/app_color.dart';
import 'package:i_potato_timer/presentation/theme/text_theme.dart';

class Colon extends StatelessWidget {
  const Colon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.w),
      child: Text(
        StringConstants.colon,
        style: AppTextTheme.bodySmall.copyWith(
          color: AppColor.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
