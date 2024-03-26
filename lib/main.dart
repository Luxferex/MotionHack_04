import 'package:flutter/material.dart';
import 'package:motion_hack_1/pages/login.dart';
import 'package:motion_hack_1/screen/MainScreen.dart';
import 'package:motion_hack_1/screen/SplashScreen.dart';

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
      initialRoute: '/home',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => login(),
        '/home': (context) => MainScreen(),
      },
    );
  }
}
