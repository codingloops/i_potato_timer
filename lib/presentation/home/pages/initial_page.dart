import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/constants/string_constants.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, right: 20.h),
              child: const Text(StringConstants.initialMessage),
            ),
            Image.asset('assets/images/arrow.png')
          ],
        ),
        SizedBox(height: 120.h),
      ],
    );
  }
}
