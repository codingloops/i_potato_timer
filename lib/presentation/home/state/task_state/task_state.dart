import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_potato_timer/presentation/home/state/task_state/task_data.dart';
part 'task_state.freezed.dart';

@freezed
sealed class TasksState with _$TasksState {
  const factory TasksState.initial() = TasksInitialState;
  const factory TasksState.loaded(List<TaskData> tasks) = TasksLoadedState;
  const factory TasksState.loading() = TasksLoadingState;
  const factory TasksState.error() = TasksErrorState;
}
