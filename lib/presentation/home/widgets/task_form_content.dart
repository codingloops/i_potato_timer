import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/constants/string_constants.dart';
import 'package:i_potato_timer/presentation/home/widgets/duration_indicator.dart';
import 'package:i_potato_timer/presentation/theme/app_color.dart';
import 'package:i_potato_timer/presentation/theme/text_theme.dart';

class TaskFormContent extends StatelessWidget {
  const TaskFormContent({
    super.key,
    required this.onDurationSelect,
    required this.titleController,
    required this.description,
  });
  final Function(Duration) onDurationSelect;
  final TextEditingController titleController;
  final TextEditingController description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 48),
          child: Text(
            StringConstants.addTask,
            style: AppTextTheme.headlineMedium.copyWith(
              color: AppColor.dialogPrimaryTextColor,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: StringConstants.title,
            hintText: StringConstants.hintTitle,
          ),
          textInputAction: TextInputAction.done,
          controller: titleController,
        ),
        SizedBox(height: 36.h),
        TextField(
          maxLines: 9,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: StringConstants.description,
            hintText: StringConstants.hintDescription,
            hintMaxLines: 1,
          ),
          textInputAction: TextInputAction.done,
          controller: description,
        ),
        SizedBox(height: 30.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            StringConstants.duration,
            style: AppTextTheme.bodySmall.copyWith(
              color: AppColor.dialogPrimaryTextColor,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        DurationIndicator(
          onDurationSelect: onDurationSelect,
        )
      ],
    );
  }
}
