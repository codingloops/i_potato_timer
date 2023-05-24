import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/presentation/home/state/task_state/task_data.dart';
import 'package:i_potato_timer/presentation/home/state/task_store/task_store.dart';
import 'package:i_potato_timer/presentation/home/widgets/finished_display.dart';
import 'package:i_potato_timer/presentation/home/widgets/mark_complete_button.dart';
import 'package:i_potato_timer/presentation/home/widgets/task_timer.dart';
import 'package:i_potato_timer/presentation/theme/app_color.dart';
import 'package:i_potato_timer/presentation/theme/text_theme.dart';
import 'package:i_potato_timer/service_locator/service_locator.dart';
import 'package:i_potato_timer/utils/duration_utils.dart';
import 'package:i_potato_timer/utils/widget_utils.dart';

class TaskStatusCard extends StatefulWidget {
  const TaskStatusCard({
    super.key,
    required this.taskData,
  });

  final TaskData taskData;

  @override
  State<TaskStatusCard> createState() => _TaskStatusCardState();
}

class _TaskStatusCardState extends State<TaskStatusCard> {
  late Duration _duration;
  late TaskData _taskData;

  @override
  void initState() {
    super.initState();
    _taskData = widget.taskData;
    _duration = getStartDuration();
  }

  bool isCompleted() {
    return _taskData.completed || (_duration.compareTo(Duration.zero) <= 0);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 16.h),
      shape: RoundedRectangleBorder(
        borderRadius: WidgetUtils.getBorderRadius(),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 32.w, right: 32.w, top: 32.h),
            child: Column(
              children: [
                isCompleted()
                    ? const FinishedDisplay()
                    : Align(
                        alignment: Alignment.centerRight,
                        child: CountDownTimer(
                          isPaused: _taskData.pausedTime != null,
                          duration: _duration,
                          onComplete: onComplete,
                          onPause: onPause,
                          onResume: onResume,
                          onStop: onStop,
                        ),
                      ),
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _taskData.title,
                    style: AppTextTheme.headlineMedium.copyWith(
                      fontSize: 22,
                      color: AppColor.secondaryColor,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _taskData.description,
                    style: AppTextTheme.bodySmall.copyWith(
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
          isCompleted()
              ? MarkCompleteButton(
                  onTap: () {
                    onStop();
                  },
                )
              : SizedBox(
                  height: 32.w,
                )
        ],
      ),
    );
  }

  void onComplete() {
    final task = TaskData.fromTask(_taskData.copyWith(completed: true));
    getIt.get<TaskStore>().onComplete(task);
  }

  Duration getStartDuration() {
    if (_taskData.pausedTime != null) {
      final duration = DurationUtils.getTimerDurationFromStartToEnd(
        startTimeEpoch: _taskData.pausedTime!,
        endTimeEpoch: _taskData.endTime,
      );
      return duration;
    } else {
      final duration = DurationUtils.getTimerDurationFromStartToEnd(
        startTimeEpoch: DurationUtils.getNowMilliSecond(),
        endTimeEpoch: _taskData.endTime,
      );
      return duration;
    }
  }

  void onPause() async {
    final task = TaskData(
      id: _taskData.id,
      title: _taskData.title,
      description: _taskData.description,
      startTime: _taskData.startTime,
      endTime: _taskData.endTime,
      pausedTime: DurationUtils.getNowMilliSecond(),
      completed: _taskData.completed,
    );
    getIt.get<TaskStore>().onTimerPaused(task);
  }

  void onResume() async {
    if (_taskData.pausedTime != null) {
      final resumeTime = DateTime.now();
      final getDurationRemaining = DurationUtils.getTimerDurationFromStartToEnd(
        startTimeEpoch: _taskData.pausedTime!,
        endTimeEpoch: _taskData.endTime,
      );
      final newEndTime = resumeTime.add(getDurationRemaining);
      final newStartTime = DurationUtils.getNowMilliSecond();

      final task = TaskData(
        id: _taskData.id,
        title: _taskData.title,
        description: _taskData.description,
        startTime: newStartTime,
        endTime: newEndTime.millisecondsSinceEpoch,
        pausedTime: null,
        completed: _taskData.completed,
      );
      getIt.get<TaskStore>().onTimerResumed(task);
    }
  }

  void onStop() {
    getIt.get<TaskStore>().onTaskDelete(_taskData);
  }
}
