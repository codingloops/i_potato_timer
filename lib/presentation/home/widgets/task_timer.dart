import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/presentation/theme/text_theme.dart';
import 'package:i_potato_timer/utils/widget_utils.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({
    super.key,
    required this.onComplete,
    required this.duration,
    required this.onPause,
    required this.onResume,
    required this.onStop,
    required this.isPaused,
  });
  final VoidCallback onComplete;
  final VoidCallback onPause;
  final VoidCallback onResume;
  final VoidCallback onStop;
  final Duration duration;
  final bool isPaused;

  @override
  CountDownTimerState createState() => CountDownTimerState();
}

class CountDownTimerState extends State<CountDownTimer>
    with TickerProviderStateMixin {
  late AnimationController controller;

  late ValueNotifier<bool> _isPausedNotifier;
  late Duration duration;

  @override
  void initState() {
    super.initState();
    duration = widget.duration;
    _isPausedNotifier = ValueNotifier(widget.isPaused);
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.duration.inSeconds),
    )..addStatusListener((status) {
        if (controller.status == AnimationStatus.dismissed) {
          onComplete();
        }
      });
    if (!_isPausedNotifier.value) {
      startTimer();
    }
  }

  void startTimer() {
    controller.reverse(
      from: controller.value == 0 ? 1 : controller.value,
    );
  }

  void onPaused() {
    widget.onPause.call();
    controller.stop();
    _isPausedNotifier.value = true;
  }

  void onResume() {
    widget.onResume.call();
    duration = controller.duration! * controller.value;
    startTimer();
    _isPausedNotifier.value = false;
  }

  void onComplete() {
    widget.onComplete.call();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ValueListenableBuilder(
          valueListenable: _isPausedNotifier,
          builder: (context, isPaused, _) {
            return isPaused
                ? Text(
                    WidgetUtils.timerString(duration),
                    style: AppTextTheme.headlineMedium,
                  )
                : TimeDisplay(controller);
          },
        ),
        SizedBox(width: 4.w),
        ValueListenableBuilder<bool>(
            valueListenable: _isPausedNotifier,
            builder: (context, isPaused, _) {
              return _TimerControlButton(
                imagePath: isPaused
                    ? 'assets/images/play.png'
                    : 'assets/images/pause.png',
                onTap: isPaused ? onResume : onPaused,
              );
            }),
        _TimerControlButton(
          imagePath: 'assets/images/stop.png',
          onTap: widget.onStop,
        ),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    _isPausedNotifier.dispose();
    super.dispose();
  }
}

class TimeDisplay extends StatelessWidget {
  const TimeDisplay(this.controller, {super.key});

  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        return Text(
          WidgetUtils.timerString(controller.duration! * controller.value),
          style: AppTextTheme.headlineMedium,
        );
      },
    );
  }
}

class _TimerControlButton extends StatelessWidget {
  const _TimerControlButton({
    required this.imagePath,
    required this.onTap,
  });

  final String imagePath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Image.asset(imagePath),
      ),
    );
  }
}
