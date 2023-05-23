import 'package:get_it/get_it.dart';
import 'package:i_potato_timer/database/local_database.dart';
import 'package:i_potato_timer/presentation/home/state/task_store/task_store.dart';
import 'package:i_potato_timer/repository/task_repository.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  static void setupServiceLocator() {
    getIt.registerSingleton<AppDatabase>(AppDatabase());
    getIt.registerSingleton<TaskRepository>(
      TaskRepository(
        getIt.get<AppDatabase>(),
      ),
    );
    getIt.registerSingleton<TaskStore>(
      TaskStore(
        getIt.get<TaskRepository>(),
      ),
    );
  }
}
