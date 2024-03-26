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
          activeIcon: Image.asset("assets/icons/ic_active_home.png"),
          icon: Image.asset("assets/icons/ic_home.png"),
          label: '',
        ),
        // Sumbang
        BottomNavigationBarItem(
          activeIcon: Image.asset("assets/icons/ic_active_sumbang.png"),
          icon: Image.asset("assets/icons/ic_sumbang.png"),
          label: '',
        ),
        // Wishlist
        BottomNavigationBarItem(
          activeIcon: Image.asset("assets/icons/ic_active_wishlist.png"),
          icon: Image.asset("assets/icons/ic_wishlist.png"),
          label: '',
        ),
        // Profile
        BottomNavigationBarItem(
          activeIcon: Image.asset("assets/icons/ic_active_profile.png"),
          icon: GestureDetector(
            onTap: () {
              // Replace with your navigation logic (e.g., push a new page)
              Navigator.pushNamed(
                  context, '/profil'); // Example using named route
            },
            child: Image.asset("assets/icons/ic_profile.png"),
          ),
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
