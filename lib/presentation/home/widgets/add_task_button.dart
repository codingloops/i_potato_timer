import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/constants/string_constants.dart';
import 'package:i_potato_timer/presentation/theme/app_color.dart';
import 'package:i_potato_timer/presentation/theme/text_theme.dart';
import 'package:i_potato_timer/utils/widget_utils.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: WidgetUtils.getBottomRadius(),
      child: Material(
        color: AppColor.buttonColor,
        child: InkWell(
          onTap: onTap,
          child: const _ButtonBody(),
        ),
      ),
    );
  }
}

class _ButtonBody extends StatelessWidget {
  const _ButtonBody();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: WidgetUtils.getBorderRadius(),
      ),
      child: Text(
        StringConstants.addTask,
        style: AppTextTheme.bodySmall.copyWith(
          color: AppColor.buttonTextColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
