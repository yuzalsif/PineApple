import 'package:flutter/material.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:grab_eat_ui/constants.dart';
import 'package:grab_eat_ui/pages/onboarding_screen.dart';
// import 'package:grab_eat_ui/pages/root_app.dart';

class CustomSplashScreen extends StatefulWidget {
  const CustomSplashScreen({Key? key}) : super(key: key);

  @override
  State<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return new AnimatedSplashScreen(
      duration: 2000,
      nextScreen: OnboardingScreen(),
      splash: Image.asset('assets/images/logo.png'),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: AppColors.backgroundColor,
    );
  }
}
