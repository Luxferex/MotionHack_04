import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int>? onClicked;
  BottomNavBar({this.selectedIndex, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        // Home
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.home, size: 30),
          icon: Image.asset("assets/icons/ic_home.png"),
          label: '',
        ),
        // Sumbang
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.menu_book, size: 30),
          icon: Image.asset("assets/icons/ic_sumbang.png"),
          label: '',
        ),
        // Wishlist
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.location_on, size: 30),
          icon: Image.asset("assets/icons/ic_wishlist.png"),
          label: '',
        ),
        // Profile
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.build, size: 30),
          icon: Image.asset("assets/icons/ic_profile.png"),
          label: '',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      currentIndex: selectedIndex,
      onTap: onClicked,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
    );
  }
}
