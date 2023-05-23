import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/presentation/home/state/task_store/task_store.dart';
import 'package:i_potato_timer/presentation/home/widgets/add_task_button.dart';
import 'package:i_potato_timer/presentation/home/widgets/task_form_content.dart';
import 'package:i_potato_timer/service_locator/service_locator.dart';
import 'package:i_potato_timer/utils/widget_utils.dart';

class TaskInputForm extends StatefulWidget {
  const TaskInputForm({
    super.key,
  });

  @override
  State<TaskInputForm> createState() => _TaskInputFormState();
}

class _TaskInputFormState extends State<TaskInputForm> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;
  late Duration taskDuration;
  late int startTime;
  late int endTime;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
  }

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
              taskDuration = duration;
            },
            titleController: titleController,
            description: descriptionController,
          ),
        ),
        AddTaskButton(
          onTap: () {
            getIt.get<TaskStore>().saveTask(
                  title: titleController.text,
                  description: descriptionController.text,
                  startTime: startTime,
                  endTime: endTime,
                );
            Navigator.pop(context);
          },
        )
      ],
    );
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }
}
