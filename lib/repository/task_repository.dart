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

  Future<int> saveTask(TaskData taskData) async {
    return localDatabase.saveTask(taskData.toCompanion(true));
  }

  Future<int> deleteTask(int id) async {
    return localDatabase.deleteTask(id);
  }

  Future<bool> updateTask(TaskData taskData) async {
    return localDatabase.updateTask(taskData.toCompanion(true));
  }
}
