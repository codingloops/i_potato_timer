import 'package:flutter/material.dart';
import 'package:i_potato_timer/constants/string_constants.dart';
import 'package:i_potato_timer/theme/app_color.dart';
import 'package:i_potato_timer/theme/text_theme.dart';
import 'package:i_potato_timer/utils/widget_utils.dart';

class MarkCompleteButton extends StatelessWidget {
  const MarkCompleteButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: WidgetUtils.getBorderRadius(),
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
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: WidgetUtils.getBorderRadius(),
      ),
      child: Text(
        StringConstants.markComplete,
        style: AppTextTheme.labelSmall.copyWith(
          fontWeight: FontWeight.w500,
          color: AppColor.buttonTextColor,
        ),
      ),
    );
  }
}
