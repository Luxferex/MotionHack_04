import 'package:flutter/material.dart';

class ItemView extends StatelessWidget {
  ItemView({super.key});

  final List<dynamic> itemImage = [
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
    "assets/images/test123.png",
  ];

  final List<dynamic> itemName = [
    "Bola api",
    "Bola api",
    "Bola api",
    "Bola api",
  ];

  final List<dynamic> itemPrice = [
    "Rp. 10.500",
    "Rp. 10.500",
    "Rp. 10.500",
    "Rp. 10.500",
  ];

  final List<dynamic> itemReview = [
    "863 Reviews",
    "863 Reviews",
    "863 Reviews",
    "863 Reviews",
  ];

  final List<dynamic> itemRating = [
    "4.5",
    "4.5",
    "4.5",
    "4.5",
  ];

  final List<dynamic> itemLocation = [
    "Bandung",
    "Bandung",
    "Bandung",
    "Bandung",
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        child: GridView.count(
          childAspectRatio: 3.55 / 5,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          primary: false,
          // padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: List.generate(itemImage.length, (index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFB9B9B9),
                ),
              ),
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.asset(
                      itemImage[index],
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                      height: 150,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ItemName
                        Text(
                          itemName[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        // ItemPrice
                        Text(
                          itemPrice[index],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFE3A30),
                          ),
                        ),
                        SizedBox(height: 4),
                        // ItemRating
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 3),
                                Text(itemRating[index]),
                              ],
                            ),
                            // ItemReview
                            Text(itemReview[index]),
                          ],
                        ),
                        SizedBox(height: 4),
                        // ItemLocation
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              size: 15,
                            ),
                            // Image.asset('assets/icons/ic_location.png'),
                            SizedBox(width: 2),
                            Text(itemLocation[index])
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
