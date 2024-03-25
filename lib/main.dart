import 'package:flutter/material.dart';
import 'package:motion_hack_1/pages/login.dart';
<<<<<<< HEAD
import 'package:motion_hack_1/screen/splashscreen.dart';
=======
import 'package:motion_hack_1/screen/MainScreen.dart';
import 'package:motion_hack_1/screen/SplashScreen.dart';
>>>>>>> 2b9b061a565c2938b9879dab3ba7ee723fdf2939

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Motion_Hack_04',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => login(),
        '/home': (context) => MainScreen(),
      },
    );
  }
}
