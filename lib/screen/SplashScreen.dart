import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:motion_hack_1/screen/onboarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset("assets/logoMotion.png"),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 251, 250, 218),
      nextScreen: OnBoarding(),
      splashIconSize: 500,
      duration: 4000,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
