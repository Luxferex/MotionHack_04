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
          icon: Icon(Icons.home_outlined, size: 30),
          label: '',
        ),
        // Sumbang
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.menu_book, size: 30),
          icon: Icon(Icons.menu_book_outlined, size: 30),
          label: '',
        ),
        // Wishlist
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.location_on, size: 30),
          icon: Icon(Icons.location_on_outlined, size: 30),
          label: '',
        ),
        // Profile
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.build, size: 30),
          icon: Icon(Icons.build_outlined, size: 30),
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
