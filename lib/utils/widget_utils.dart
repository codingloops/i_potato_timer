import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetUtils {
  static BorderRadius getBorderRadius() {
    return BorderRadius.circular(
      25.r,
    );
  }

  static BorderRadius getBottomRadius() {
    return BorderRadius.only(
      bottomLeft: Radius.circular(25.r),
      bottomRight: Radius.circular(25.r),
    );
  }

  static String timerString(AnimationController controller) {
    final duration = controller.duration! * controller.value;
    return '''${(duration.inHours % 60).toString().padLeft(2, '0')}:${(duration.inMinutes % 60).toString().padLeft(2, '0')}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}''';
  }
}
