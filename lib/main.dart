import 'package:flutter/material.dart';
import 'package:motion_hack_1/pages/Homepage.dart';
import 'package:motion_hack_1/pages/auth_pages.dart';
import 'package:motion_hack_1/pages/login.dart';
import 'package:motion_hack_1/pages/registration.dart';
import 'package:motion_hack_1/screen/MainScreen.dart';
import 'package:motion_hack_1/screen/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
        '/': (context) => AuthPages(),
        '/login': (context) => login(),
        '/home': (context) => HomePage(),
        '/Registration': (context) => Registration(),
      },
    );
  }
}
