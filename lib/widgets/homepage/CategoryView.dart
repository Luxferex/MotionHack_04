import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key});

  final List<dynamic> categoryImage = [
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
  ];

  final List<dynamic> categoryName = [
    "Promosi",
    "Penjualan",
    "Operasional",
    "Kreatif",
    "Akomodasi",
    "Akomodasi",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        child: Row(
          children: List.generate(categoryImage.length, (index) {
            return InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 72,
                      height: 72,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(72),
                        child: Image.asset(
                          categoryImage[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      categoryName[index],
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
