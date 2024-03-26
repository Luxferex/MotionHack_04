import 'package:flutter/material.dart';
import 'package:motion_hack_1/screen/MainScreen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
        ),
        title: Center(child: Text('Profile')),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ),
      ),
    );
  }
}
