import 'package:flutter/material.dart';
import 'package:i_potato_timer/constants/string_constants.dart';
import 'package:i_potato_timer/home/widgets/colon_widget.dart';
import 'package:i_potato_timer/home/widgets/unit_duration_display.dart';

class DurationIndicator extends StatelessWidget {
  const DurationIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UnitDurationDisplay(
          unit: StringConstants.hh,
          unitTime: '00',
        ),
        Colon(),
        UnitDurationDisplay(
          unit: StringConstants.mm,
          unitTime: '00',
        ),
        Colon(),
        UnitDurationDisplay(
          unit: StringConstants.ss,
          unitTime: '00',
        ),
      ],
    );
  }
}