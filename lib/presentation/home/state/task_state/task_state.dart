import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_potato_timer/database/local_database.dart';
part 'task_state.freezed.dart';

class TaskData extends Task {
  TaskData({
    required super.id,
    required super.title,
    required super.description,
    required super.startTime,
    required super.endTime,
  });
}

@freezed
sealed class TaskState with _$TaskState {
  const factory TaskState.loaded(List<TaskData> tasks) = TaskLoadedState;
  const factory TaskState.loading() = LoadingState;
  const factory TaskState.error() = ErrorState;
}
