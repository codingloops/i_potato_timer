// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskData> tasks) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskData> tasks)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskData> tasks)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInitialState value) initial,
    required TResult Function(TasksLoadedState value) loaded,
    required TResult Function(TasksLoadingState value) loading,
    required TResult Function(TasksErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitialState value)? initial,
    TResult? Function(TasksLoadedState value)? loaded,
    TResult? Function(TasksLoadingState value)? loading,
    TResult? Function(TasksErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitialState value)? initial,
    TResult Function(TasksLoadedState value)? loaded,
    TResult Function(TasksLoadingState value)? loading,
    TResult Function(TasksErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TasksInitialStateCopyWith<$Res> {
  factory _$$TasksInitialStateCopyWith(
          _$TasksInitialState value, $Res Function(_$TasksInitialState) then) =
      __$$TasksInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksInitialStateCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksInitialState>
    implements _$$TasksInitialStateCopyWith<$Res> {
  __$$TasksInitialStateCopyWithImpl(
      _$TasksInitialState _value, $Res Function(_$TasksInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TasksInitialState implements TasksInitialState {
  const _$TasksInitialState();

  @override
  String toString() {
    return 'TasksState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskData> tasks) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskData> tasks)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskData> tasks)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInitialState value) initial,
    required TResult Function(TasksLoadedState value) loaded,
    required TResult Function(TasksLoadingState value) loading,
    required TResult Function(TasksErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitialState value)? initial,
    TResult? Function(TasksLoadedState value)? loaded,
    TResult? Function(TasksLoadingState value)? loading,
    TResult? Function(TasksErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitialState value)? initial,
    TResult Function(TasksLoadedState value)? loaded,
    TResult Function(TasksLoadingState value)? loading,
    TResult Function(TasksErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TasksInitialState implements TasksState {
  const factory TasksInitialState() = _$TasksInitialState;
}

/// @nodoc
abstract class _$$TasksLoadedStateCopyWith<$Res> {
  factory _$$TasksLoadedStateCopyWith(
          _$TasksLoadedState value, $Res Function(_$TasksLoadedState) then) =
      __$$TasksLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskData> tasks});
}

/// @nodoc
class __$$TasksLoadedStateCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksLoadedState>
    implements _$$TasksLoadedStateCopyWith<$Res> {
  __$$TasksLoadedStateCopyWithImpl(
      _$TasksLoadedState _value, $Res Function(_$TasksLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TasksLoadedState(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskData>,
    ));
  }
}

/// @nodoc

class _$TasksLoadedState implements TasksLoadedState {
  const _$TasksLoadedState(final List<TaskData> tasks) : _tasks = tasks;

  final List<TaskData> _tasks;
  @override
  List<TaskData> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksState.loaded(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksLoadedState &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksLoadedStateCopyWith<_$TasksLoadedState> get copyWith =>
      __$$TasksLoadedStateCopyWithImpl<_$TasksLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskData> tasks) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskData> tasks)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskData> tasks)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInitialState value) initial,
    required TResult Function(TasksLoadedState value) loaded,
    required TResult Function(TasksLoadingState value) loading,
    required TResult Function(TasksErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitialState value)? initial,
    TResult? Function(TasksLoadedState value)? loaded,
    TResult? Function(TasksLoadingState value)? loading,
    TResult? Function(TasksErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitialState value)? initial,
    TResult Function(TasksLoadedState value)? loaded,
    TResult Function(TasksLoadingState value)? loading,
    TResult Function(TasksErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TasksLoadedState implements TasksState {
  const factory TasksLoadedState(final List<TaskData> tasks) =
      _$TasksLoadedState;

  List<TaskData> get tasks;
  @JsonKey(ignore: true)
  _$$TasksLoadedStateCopyWith<_$TasksLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksLoadingStateCopyWith<$Res> {
  factory _$$TasksLoadingStateCopyWith(
          _$TasksLoadingState value, $Res Function(_$TasksLoadingState) then) =
      __$$TasksLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksLoadingStateCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksLoadingState>
    implements _$$TasksLoadingStateCopyWith<$Res> {
  __$$TasksLoadingStateCopyWithImpl(
      _$TasksLoadingState _value, $Res Function(_$TasksLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TasksLoadingState implements TasksLoadingState {
  const _$TasksLoadingState();

  @override
  String toString() {
    return 'TasksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskData> tasks) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskData> tasks)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskData> tasks)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInitialState value) initial,
    required TResult Function(TasksLoadedState value) loaded,
    required TResult Function(TasksLoadingState value) loading,
    required TResult Function(TasksErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitialState value)? initial,
    TResult? Function(TasksLoadedState value)? loaded,
    TResult? Function(TasksLoadingState value)? loading,
    TResult? Function(TasksErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitialState value)? initial,
    TResult Function(TasksLoadedState value)? loaded,
    TResult Function(TasksLoadingState value)? loading,
    TResult Function(TasksErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TasksLoadingState implements TasksState {
  const factory TasksLoadingState() = _$TasksLoadingState;
}

/// @nodoc
abstract class _$$TasksErrorStateCopyWith<$Res> {
  factory _$$TasksErrorStateCopyWith(
          _$TasksErrorState value, $Res Function(_$TasksErrorState) then) =
      __$$TasksErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksErrorStateCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksErrorState>
    implements _$$TasksErrorStateCopyWith<$Res> {
  __$$TasksErrorStateCopyWithImpl(
      _$TasksErrorState _value, $Res Function(_$TasksErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TasksErrorState implements TasksErrorState {
  const _$TasksErrorState();

  @override
  String toString() {
    return 'TasksState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskData> tasks) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskData> tasks)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskData> tasks)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInitialState value) initial,
    required TResult Function(TasksLoadedState value) loaded,
    required TResult Function(TasksLoadingState value) loading,
    required TResult Function(TasksErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitialState value)? initial,
    TResult? Function(TasksLoadedState value)? loaded,
    TResult? Function(TasksLoadingState value)? loading,
    TResult? Function(TasksErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitialState value)? initial,
    TResult Function(TasksLoadedState value)? loaded,
    TResult Function(TasksLoadingState value)? loading,
    TResult Function(TasksErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TasksErrorState implements TasksState {
  const factory TasksErrorState() = _$TasksErrorState;
}
