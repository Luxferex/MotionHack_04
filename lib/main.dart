import 'package:flutter/material.dart';
import 'package:motion_hack_1/pages/HomePage.dart';
import 'package:motion_hack_1/pages/alamat/mainAlamat.dart';

import 'package:motion_hack_1/pages/login.dart';
import 'package:motion_hack_1/pages/profile/mainProfile.dart';
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
      initialRoute: '/main',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => login(),
        '/Registration': (context) => Registration(),
        '/main': (context) => MainScreen(),
        '/home': (context) => HomePage(),
        '/profil': (context) => ProfilePage(),
        '/alamat': (context) => DaftarAlamatPage(),
      },
    );
  }
}
