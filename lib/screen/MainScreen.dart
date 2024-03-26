import 'package:flutter/material.dart';
import 'package:motion_hack_1/pages/HomePage.dart';
import 'package:motion_hack_1/pages/SumbangPage.dart';
import 'package:motion_hack_1/pages/WishlistPage.dart';
import 'package:motion_hack_1/pages/profile/ProfilePage.dart';
import 'package:motion_hack_1/widgets/mainscreen/bottomnavbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  List screens = [
    HomePage(),
    SumbangPage(),
    WishlistPage(),
    ProfilePage(),
  ];

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: screens.elementAt(selectedIndex),
        ),
        // drawer: SideMenu(),
        bottomNavigationBar: BottomNavBar(
          selectedIndex: selectedIndex,
          onClicked: onClicked,
        ));
  }
}
