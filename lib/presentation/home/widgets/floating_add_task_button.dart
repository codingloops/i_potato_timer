import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/presentation/home/state/task_store/task_store.dart';
import 'package:i_potato_timer/presentation/home/widgets/task_input_form.dart';
import 'package:i_potato_timer/presentation/theme/app_color.dart';
import 'package:i_potato_timer/service_locator/service_locator.dart';

class FloatingAddTaskButton extends StatelessWidget {
  const FloatingAddTaskButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final taskStore = getIt.get<TaskStore>();

    return Observer(builder: (context) {
      return taskStore.state.when(
        initial: () => _buildFloatingActionButton(context),
        error: () => const SizedBox(),
        loaded: (tasks) => _buildFloatingActionButton(context),
        loading: () => const SizedBox(),
      );
    });
  }

  FloatingActionButton _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => sampleDialog(context),
      child: Icon(
        Icons.add_circle_outline,
        color: AppColor.iconColor,
        size: 35.w,
        weight: 0.5,
      ),
    );
  }

  void sampleDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierColor: AppColor.black.withOpacity(0.7),
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      pageBuilder: (_, __, ___) {
        return const TaskInputForm();
      },
    );
  }
}
