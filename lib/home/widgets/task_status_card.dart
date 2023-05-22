import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/home/widgets/finished_display.dart';
import 'package:i_potato_timer/home/widgets/task_timer.dart';
import 'package:i_potato_timer/theme/app_color.dart';
import 'package:i_potato_timer/theme/text_theme.dart';
import 'package:i_potato_timer/utils/widget_utils.dart';

class TaskStatusCard extends StatelessWidget {
  const TaskStatusCard({
    super.key,
  });

  final bool completed = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 16.h),
      shape: RoundedRectangleBorder(
        borderRadius: WidgetUtils.getBorderRadius(),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 32.w, right: 32.w, top: 32.h),
            child: Column(
              children: [
                completed
                    ? const FinishedDisplay()
                    : Align(
                        alignment: Alignment.centerRight,
                        child: CountDownTimer(
                          duration: const Duration(minutes: 1),
                          onComplete: () {},
                          onPause: () {},
                          onResume: () {},
                          onStop: () {},
                        ),
                      ),
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Egg Boiling ',
                    style: AppTextTheme.headlineMedium.copyWith(
                      fontSize: 22,
                      color: AppColor.secondaryColor,
                    ),
                  ),
                ),
                Text(
                  'Rice is cooking in this slow cooker, need to turn off the cooker with this timer else the rice will burn',
                  style: AppTextTheme.bodySmall.copyWith(
                    color: AppColor.primaryColor,
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
          // MarkCompleteButton(
          //   onTap: () {},
          // )
          SizedBox(
            height: 32.w,
          )
        ],
      ),
    );
  }
}
