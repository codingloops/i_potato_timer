import 'package:flutter/material.dart';
import 'package:i_potato_timer/presentation/home/state/task_state/task_data.dart';
import 'package:i_potato_timer/presentation/home/widgets/task_status_card.dart';

class TaskLoadedPage extends StatelessWidget {
  const TaskLoadedPage({
    super.key,
    required this.taskList,
  });

  final List<TaskData> taskList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: Key(taskList.hashCode.toString()),
      itemCount: taskList.length,
      itemBuilder: (context, index) {
        return TaskStatusCard(
          key: Key(index.toString()),
          taskData: taskList[index],
        );
      },
    );
  }
}
