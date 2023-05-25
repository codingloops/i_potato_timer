import 'package:i_potato_timer/database/local_database.dart';

class TaskData extends Task {
  TaskData({
    required super.id,
    required super.title,
    required super.description,
    required super.startTime,
    required super.endTime,
    super.pausedTime,
    required super.completed,
  });

  factory TaskData.fromTask(Task task) => TaskData(
        id: task.id,
        title: task.title,
        description: task.description,
        startTime: task.startTime,
        endTime: task.endTime,
        pausedTime: task.pausedTime,
        completed: task.completed,
      );
}
