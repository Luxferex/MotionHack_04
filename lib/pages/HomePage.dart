import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:motion_hack_1/widgets/homepage/CategoryView.dart';
import 'package:motion_hack_1/widgets/homepage/CustomSearchBar.dart';
import 'package:motion_hack_1/widgets/homepage/ItemView.dart';
import 'package:motion_hack_1/widgets/homepage/PromoBanner.dart';
import 'package:motion_hack_1/widgets/homepage/ShippingAddress.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      topColor: Colors.white,
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFB),
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 0,
          actions: [
            CustomSearchBar(
              hintText: "Cari di EcoMerch",
            ),
            Icon(
              Icons.notifications_outlined,
              size: 35,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),

                // Alamat
                ShippingAddress(),
                SizedBox(height: 10),

                // Promo banner
                PromoBanner(),
                SizedBox(height: 10),

                // Kategori
                Text(
                  "Kategori",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                CategoryView(),
                SizedBox(height: 10),

                // Item
                Text(
                  "Temukan barang lainnya",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                ItemView(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
