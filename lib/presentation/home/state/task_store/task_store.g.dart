// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskStore on _TaskStore, Store {
  late final _$stateAtom = Atom(name: '_TaskStore.state', context: context);

  @override
  TasksState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(TasksState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$_reloadDataAsyncAction =
      AsyncAction('_TaskStore._reloadData', context: context);

  @override
  Future<dynamic> _reloadData() {
    return _$_reloadDataAsyncAction.run(() => super._reloadData());
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
