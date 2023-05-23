import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_potato_timer/presentation/home/home_screen.dart';
import 'package:i_potato_timer/presentation/splash/widgets/app_name.dart';
import 'package:i_potato_timer/presentation/splash/widgets/splash_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _onInitialized();
  }

  Future<void> _onInitialized() async {
    await Future.delayed(const Duration(seconds: 1));
    navigateToHome();
  }

  void navigateToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  List<Widget> get children => [
        const SplashLogo(),
        SizedBox(height: 57.h),
        const AppName(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Center _buildBody() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      );
}
