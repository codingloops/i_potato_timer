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

  Future getAllTasks() async {
    try {
      state = const TasksLoadingState();
      reloadData();
    } catch (e) {
      state = const TasksErrorState();
    }
  }

  Future saveTask(TaskData taskData) async {
    try {
      await _taskRepository.saveTask(taskData);
      reloadData();
    } catch (e) {
      state = const TasksErrorState();
    }
  }

  @action
  Future reloadData() async {
    final tasks = await _taskRepository.getTasks();
    tasks.sort((task1, task2) {
      if (task2.completed) {
        return 1;
      }
      return -1;
    });
    if (tasks.isNotEmpty) {
      state = TasksLoadedState(tasks);
    }
  }

  onTimerPaused(TaskData taskData) async {
    await _taskRepository.updateTask(taskData);
  }

  onTimerResumed(TaskData taskData) async {
    await _taskRepository.updateTask(taskData);
  }

  onTaskDelete(TaskData taskData) async {
    await _taskRepository.deleteTask(taskData.id);
    reloadData();
  }

  onComplete() {
    reloadData();
  }
}
