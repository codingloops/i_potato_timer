import 'package:flutter/material.dart';
import 'package:i_potato_timer/constants/string_constants.dart';
import 'package:i_potato_timer/presentation/home/state/task_store/task_store.dart';
import 'package:i_potato_timer/presentation/theme/app_color.dart';
import 'package:i_potato_timer/presentation/theme/text_theme.dart';
import 'package:i_potato_timer/service_locator/service_locator.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            StringConstants.somethingWentWrong,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColor.buttonColor),
            ),
            onPressed: () => getIt.get<TaskStore>().getAllTasks(),
            child: Text(
              StringConstants.reloadTasks,
              style: AppTextTheme.bodyMedium.copyWith(
                color: AppColor.buttonTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
