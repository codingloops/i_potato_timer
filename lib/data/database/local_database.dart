import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
part 'local_database.g.dart';

class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  IntColumn get startTime => integer()();
  IntColumn get endTime => integer()();
  IntColumn get pausedTime => integer().nullable()();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Tasks])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<Task>> getEmployees() async {
    return await select(tasks).get();
  }

  Future<Task> getSingleEmployee(int id) async {
    return await (select(tasks)
          ..where(
            (tbl) => tbl.id.equals(id),
          ))
        .getSingle();
  }

  Future<int> saveEmployee(TasksCompanion companion) async {
    return await into(tasks).insert(companion);
  }

  Future<int> deleteEmployee(int id) async {
    return (delete(tasks)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<bool> updateEmployee(TasksCompanion companion) async {
    return await update(tasks).replace(companion);
  }
}
