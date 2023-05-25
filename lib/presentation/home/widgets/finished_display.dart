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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AudioWave(),
            SizedBox(
              width: 16.w,
            ),
            Text(
              StringConstants.finished,
              style: AppTextTheme.headlineMedium.copyWith(
                color: AppColor.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 16.w,
            ),
            const AudioWave(),
          ],
        ),
        SizedBox(height: 10.h)
      ],
    );
  }
}

class AudioWave extends StatelessWidget {
  const AudioWave({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UnitWave(height: 7.h),
        UnitWave(height: 15.h),
        UnitWave(height: 23.h),
        UnitWave(height: 20.h),
        UnitWave(height: 10.h),
        UnitWave(height: 20.h),
        UnitWave(height: 12.h),
        UnitWave(height: 6.h),
      ],
    );
  }
}

class UnitWave extends StatelessWidget {
  const UnitWave({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1.w),
      width: 2.w,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: AppColor.primaryColor,
      ),
    );
  }
}
