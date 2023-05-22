import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/constants/app_constants.dart';
import 'package:i_potato_timer/splash/splash_screen.dart';
import 'package:i_potato_timer/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final designSize = const Size(
    AppConstants.designWidth,
    AppConstants.designHeight,
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: designSize,
      builder: (context, child) => child!,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'I Potato Timer',
            theme: AppTheme.appTheme(),
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
