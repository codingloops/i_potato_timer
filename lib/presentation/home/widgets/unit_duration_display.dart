import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/presentation/theme/app_color.dart';
import 'package:i_potato_timer/presentation/theme/text_theme.dart';

class UnitDurationDisplay extends StatelessWidget {
  const UnitDurationDisplay({
    super.key,
    required this.unitTime,
    required this.unit,
  });

  final String unitTime;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 31.h,
          width: 36.w,
          color: AppColor.timerGreen.withOpacity(
            0.6,
          ),
          alignment: Alignment.center,
          child: Text(
            unitTime,
            style: AppTextTheme.bodyLarge.copyWith(
              color: AppColor.dialogPrimaryTextColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          unit,
          style: AppTextTheme.labelSmall.copyWith(
            color: AppColor.dialogPrimaryTextColor,
          ),
        ),
      ],
    );
  }
}
