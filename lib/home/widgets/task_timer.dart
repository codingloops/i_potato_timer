import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/theme/text_theme.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({
    super.key,
    required this.onComplete,
    required this.duration,
    required this.onPause,
    required this.onResume,
    required this.onStop,
  });
  final VoidCallback onComplete;
  final VoidCallback onPause;
  final VoidCallback onResume;
  final VoidCallback onStop;
  final Duration duration;

  @override
  CountDownTimerState createState() => CountDownTimerState();
}

class CountDownTimerState extends State<CountDownTimer>
    with TickerProviderStateMixin {
  late AnimationController controller;

  late ValueNotifier<bool> _isPausedNotifier;

  @override
  void initState() {
    super.initState();
    _isPausedNotifier = ValueNotifier(false);
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.duration.inSeconds),
    )..addStatusListener((status) {
        if (controller.status == AnimationStatus.completed) {
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

  void handlePauseToggle() {
    if (_isPausedNotifier.value) {
      startTimer();
      _isPausedNotifier.value = false;
    } else {
      controller.stop();
      _isPausedNotifier.value = true;
    }
  }

  void onPaused() {
    widget.onPause.call();
    handlePauseToggle();
  }

  void onResume() {
    widget.onResume.call();
    handlePauseToggle();
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
        TimeDisplay(controller),
        SizedBox(width: 4.w),
        ValueListenableBuilder<bool>(
            valueListenable: _isPausedNotifier,
            builder: (context, snapshot, _) {
              return _TimerControlButton(
                imagePath: snapshot
                    ? 'assets/images/play.png'
                    : 'assets/images/pause.png',
                onTap: snapshot ? onPaused : onResume,
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
    super.dispose();
  }
}

class TimeDisplay extends StatelessWidget {
  const TimeDisplay(this.controller, {super.key});

  final AnimationController controller;

  String get timerString {
    final duration = controller.duration! * controller.value;
    return '''${(duration.inHours % 60).toString().padLeft(2, '0')}:${(duration.inMinutes % 60).toString().padLeft(2, '0')}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}''';
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        return Text(
          timerString,
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