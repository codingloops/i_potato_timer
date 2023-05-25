import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/constants/string_constants.dart';
import 'package:i_potato_timer/presentation/home/pages/error_page.dart';
import 'package:i_potato_timer/presentation/home/pages/initial_page.dart';
import 'package:i_potato_timer/presentation/home/pages/task_loaded_page.dart';
import 'package:i_potato_timer/presentation/home/state/task_store/task_store.dart';
import 'package:i_potato_timer/presentation/home/widgets/floating_add_task_button.dart';
import 'package:i_potato_timer/presentation/theme/text_theme.dart';
import 'package:i_potato_timer/service_locator/service_locator.dart';
import 'package:i_potato_timer/utils/audio_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TaskStore _taskStore;

  @override
  void initState() {
    super.initState();
    _taskStore = getIt.get<TaskStore>();
    _taskStore.getAllTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  FloatingAddTaskButton _buildFloatingActionButton() =>
      const FloatingAddTaskButton();

  Padding _buildBody() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Observer(
        builder: (context) => _taskStore.state.when(
          initial: () => const InitialPage(),
          error: () => const ErrorPage(),
          loaded: (tasks) => TaskLoadedPage(taskList: tasks),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: false,
      title: Text(
        StringConstants.potatoTimer,
        style: AppTextTheme.headlineMedium,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
