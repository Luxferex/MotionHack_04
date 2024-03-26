import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:motion_hack_1/pages/HomePage.dart';
import 'package:motion_hack_1/pages/login.dart';

class AuthPages extends StatelessWidget {
  const AuthPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomePage();
            } else {
              return login();
            }
          }),
    );
  }
}
