import 'package:i_potato_timer/presentation/home/state/task_state/task_data.dart';
import 'package:i_potato_timer/presentation/home/state/task_state/task_state.dart';
import 'package:i_potato_timer/repository/task_repository.dart';
import 'package:mobx/mobx.dart';
part 'task_store.g.dart';

class TaskStore extends _TaskStore with _$TaskStore {
  TaskStore(TaskRepository taskRepository) : super(taskRepository);
}

abstract class _TaskStore with Store {
  final TaskRepository _taskRepository;

  _TaskStore(this._taskRepository);

  @observable
  TasksState state = const TasksInitialState();

  Future<void> getAllTasks() async {
    try {
      state = const TasksLoadingState();
      _reloadData();
    } catch (e) {
      state = const TasksErrorState();
    }
  }

  Future<void> saveTask({
    required String title,
    required String description,
    required int startTime,
    required int endTime,
  }) async {
    try {
      await _taskRepository.saveTask(
        title: title,
        description: description,
        startTime: startTime,
        endTime: endTime,
      );
      _reloadData();
    } catch (e) {
      state = const TasksErrorState();
    }
  }

  Future<void> onUpdate(TaskData taskData) async {
    try {
      await _taskRepository.updateTask(taskData); 
    } catch (error) {
      state = const TasksErrorState();
    }
    _reloadData();
  }

  @action
  Future<void> _reloadData() async {
    final tasks = await _taskRepository.getTasks();
    tasks.sort((task1, task2) {
      if (task2.completed) {
        return 1;
      }
      return -1;
    });
    if (tasks.isNotEmpty) {
      state = TasksLoadedState(tasks);
    } else {
      state = const TasksInitialState();
    }
  }

  Future<TaskData> getSingleTask(int id) async {
    return await _taskRepository.getSingleTask(id);
  }

  Future<void> onTimerPaused(TaskData taskData) async {
    onUpdate(taskData);
  }

  Future<void> onTimerResumed(TaskData taskData) async {
    onUpdate(taskData);
  }

  Future<void> onTaskDelete(TaskData taskData) async {
    try {
      await _taskRepository.deleteTask(taskData.id);
      _reloadData();
    } catch (error) {
      state = const TasksErrorState();
    }
  }

  Future<void> onComplete(TaskData taskData) async {
    try {
      final completedTask = taskData.copyWith(completed: true);
      await _taskRepository.updateTask(TaskData.fromTask(completedTask));
    } catch (e) {
      state = const TasksErrorState();
    }
    _reloadData();
  }
}
