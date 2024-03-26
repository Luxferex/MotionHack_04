import 'package:flutter/material.dart';

class RiwayatView extends StatelessWidget {
  RiwayatView({super.key});

  final List<dynamic> categoryIcons = [
    "assets/icons/ic_fashion.png",
    "assets/icons/ic_makanan.png",
    "assets/icons/ic_kosmetik.png",
  ];

  final List<dynamic> categoryName = [
    "Fashion",
    "Makanan",
    "Kosmetik",
  ];

  final List<dynamic> message = [
    "Kamu telah menyumbang 10 baju!",
    "Kamu telah menyumbang 5 makanan!",
    "Kamu telah menyumbang 5  kosmetik!",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: List.generate(categoryIcons.length, (index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFB9B9B9),
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 3),
            padding: EdgeInsets.all(7),
            child: Row(
              children: [
                Image.asset(categoryIcons[index]),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categoryName[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Kamu telah menyumbang 10 baju!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
