import 'dart:async';
import 'package:flutter/material.dart';
import 'package:newsapp/ui/home_screen/home_screen.dart';
import 'package:newsapp/utils/app_colors.dart';
import 'package:newsapp/utils/asset_manager.dart';


class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HomeScreen()
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Image.asset(AssetManager.darkSplashScreen),
      ),
    );
  }
}