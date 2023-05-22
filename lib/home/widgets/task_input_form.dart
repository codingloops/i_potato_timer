import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/home/widgets/add_task_button.dart';
import 'package:i_potato_timer/home/widgets/task_form_content.dart';
import 'package:i_potato_timer/utils/widget_utils.dart';

class TaskInputForm extends StatefulWidget {
  const TaskInputForm({
    super.key,
  });

  @override
  State<TaskInputForm> createState() => _TaskInputFormState();
}

class _TaskInputFormState extends State<TaskInputForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 60.h),
      child: _buildFromScaffold(),
    );
  }

  ClipRRect _buildFromScaffold() {
    return ClipRRect(
      borderRadius: WidgetUtils.getBorderRadius(),
      child: Material(
        color: Colors.white,
        child: _buildFormBody(),
      ),
    );
  }

  Column _buildFormBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 32.w, right: 64.w),
          child: TaskFormContent(
            onDurationSelect: (duration) {
              print('This is From TaskInput $duration');
            },
          ),
        ),
        AddTaskButton(
          onTap: () {},
        )
      ],
    );
  }
}
