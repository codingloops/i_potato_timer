import 'package:i_potato_timer/database/local_database.dart';

class TaskRepository {
  TaskRepository(this.localDatabase);
  final AppDatabase localDatabase;

  Future<List<Task>> getTasks() async {
    return await localDatabase.getTasks();
  }

  Future<Task> getSingleTask(int id) async {
    return localDatabase.getSingleTask(id);
  }

  Future<int> saveTask(TasksCompanion companion) async {
    return localDatabase.saveTask(companion);
  }

  Future<int> deleteTask(int id) async {
    return localDatabase.deleteTask(id);
  }

  Future<bool> updateTask(TasksCompanion companion) async {
    return localDatabase.updateTask(companion);
  }
}
