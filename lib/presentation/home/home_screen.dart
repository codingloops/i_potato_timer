import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/constants/string_constants.dart';
import 'package:i_potato_timer/presentation/home/widgets/task_input_form.dart';
import 'package:i_potato_timer/presentation/home/widgets/task_status_card.dart';
import 'package:i_potato_timer/presentation/theme/app_color.dart';
import 'package:i_potato_timer/presentation/theme/text_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          StringConstants.potatoTimer,
          style: AppTextTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: ListView(
          children: const [
            TaskStatusCard(),
            TaskStatusCard(),
            TaskStatusCard(),
            TaskStatusCard(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sampleDialog(context);
        },
        child: Icon(
          Icons.add_circle_outline,
          color: AppColor.iconColor,
          size: 35.w,
          weight: 0.5,
        ),
      ),
    );
  }

  void sampleDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierColor: Colors.black12.withOpacity(0.6),
      barrierDismissible: true,
      barrierLabel: 'Dialog',
      pageBuilder: (_, __, ___) {
        return const TaskInputForm();
      },
    );
  }
}
