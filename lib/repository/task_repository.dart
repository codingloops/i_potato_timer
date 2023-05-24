import 'package:drift/drift.dart';
import 'package:i_potato_timer/database/local_database.dart';
import 'package:i_potato_timer/presentation/home/state/task_state/task_data.dart';

class TaskRepository {
  TaskRepository(this.localDatabase);
  final AppDatabase localDatabase;

  Future<List<TaskData>> getTasks() async {
    final tasks = await localDatabase.getTasks();
    List<TaskData> taskData = [];
    for (Task element in tasks) {
      taskData.add(TaskData.fromTask(element));
    }
    return taskData;
  }

  Future<TaskData> getSingleTask(int id) async {
    final task = await localDatabase.getSingleTask(id);
    return TaskData.fromTask(task);
  }

  Future<int> saveTask({
    required String title,
    required String description,
    required int startTime,
    required int endTime,
  }) async {
    return localDatabase.saveTask(
      TasksCompanion(
        id: const Value.absent(),
        title: Value(title),
        description: Value(description),
        startTime: Value(startTime),
        endTime: Value(endTime),
        pausedTime: const Value.absent(),
        completed: const Value(false),
      ),
    );
  }

  Future<int> deleteTask(int id) async {
    return localDatabase.deleteTask(id);
  }

  Future<bool> updateTask(TaskData taskData) async {
    return localDatabase.updateTask(taskData.toCompanion(false));
  }
}
