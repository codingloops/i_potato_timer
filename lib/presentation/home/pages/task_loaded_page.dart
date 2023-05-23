import 'package:flutter/material.dart';
import 'package:i_potato_timer/presentation/home/widgets/task_status_card.dart';

class TaskLoadedPage extends StatelessWidget {
  const TaskLoadedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskStatusCard(),
        TaskStatusCard(),
        TaskStatusCard(),
        TaskStatusCard(),
      ],
    );
  }
}
