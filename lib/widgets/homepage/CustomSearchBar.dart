import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFFEFEFEF),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Cari di EcoMerch',
              hintStyle: TextStyle(color: Color(0xFFB9B9B9)),
              border: InputBorder.none,
              icon: Image.asset('assets/icons/ic_search.png'),
            ),
          ),
        ),
      ),
    );
  }
}
