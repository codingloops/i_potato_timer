import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/constants/string_constants.dart';
import 'package:i_potato_timer/constants/time_picker_data.dart';
import 'package:i_potato_timer/presentation/home/widgets/colon_widget.dart';
import 'package:i_potato_timer/presentation/home/widgets/unit_duration_display.dart';
import 'package:i_potato_timer/presentation/theme/app_color.dart';

class DurationIndicator extends StatefulWidget {
  const DurationIndicator({
    super.key,
    required this.onDurationSelect,
  });

  final Function(Duration) onDurationSelect;

  @override
  State<DurationIndicator> createState() => _DurationIndicatorState();
}

class _DurationIndicatorState extends State<DurationIndicator> {
  Duration displayDuration = const Duration(
    hours: 0,
    minutes: 0,
    seconds: 0,
  );

  get hrs => (displayDuration.inHours % 60).toString().padLeft(2, '0');
  get min => (displayDuration.inMinutes % 60).toString().padLeft(2, '0');
  get sec => (displayDuration.inSeconds % 60).toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showPickerArray(context);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UnitDurationDisplay(
            unit: StringConstants.hh,
            unitTime: hrs,
          ),
          const Colon(),
          UnitDurationDisplay(
            unit: StringConstants.mm,
            unitTime: min,
          ),
          const Colon(),
          UnitDurationDisplay(
            unit: StringConstants.ss,
            unitTime: sec,
          ),
        ],
      ),
    );
  }

  void showPickerArray(BuildContext context) {
    Picker(
        adapter: PickerDataAdapter<String>(
          pickerData: const JsonDecoder().convert(pickerData2),
          isArray: true,
        ),
        builderHeader: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(StringConstants.hh),
                Colon(),
                Text(StringConstants.mm),
                Colon(),
                Text(StringConstants.ss),
              ],
            ),
          );
        },
        containerColor: AppColor.cardColor,
        onConfirm: (Picker picker, List value) {
          final duration = Duration(
            hours: value[0],
            minutes: value[1],
            seconds: value[2],
          );
          displayDuration = Duration(
            hours: value[0],
            minutes: value[1],
            seconds: value[2],
          );

          widget.onDurationSelect.call(duration);
          setState(() {});
        }).showDialog(context);
  }
}
