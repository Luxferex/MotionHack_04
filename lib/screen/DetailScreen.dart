import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:motion_hack_1/widgets/detailscreen/BeliButton.dart';
import 'package:motion_hack_1/widgets/detailscreen/ItemViewHorizontal.dart';
import 'package:motion_hack_1/widgets/detailscreen/ProductDetail.dart';
import 'package:motion_hack_1/widgets/detailscreen/TokoView.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      topColor: Colors.white,
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFB),
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          centerTitle: true,
          title: Text("Detail"),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.share,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.favorite_outline,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Detail
                ProductDetail(),

                Divider(height: 50),
                // Toko
                TokoView(),

                Divider(height: 50),

                // Produk lainnya
                Text(
                  "Lainnya di toko ini",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                ItemViewHorizontal(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BeliButton(),
      ),
    );
  }
}
