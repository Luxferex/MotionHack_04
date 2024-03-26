import 'package:flutter/material.dart';

class TokoView extends StatelessWidget {
  const TokoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Profile Toko
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(72),
                child: Container(
                  width: 90,
                  height: 90,
                  child: Image.asset(
                    "assets/images/test123.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Vegetalami"),
                  Text("Online 2 jam lalu"),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        size: 15,
                      ),
                      // Image.asset('assets/icons/ic_location.png'),
                      SizedBox(width: 2),
                      Text("Bandung")
                    ],
                  ),
                ],
              )
            ],
          ),
          // Rating & Ikuti Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Rating
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 7),
                      Text(
                        "4.5",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(width: 7),
                      Text(
                        "Rata-rata ulasan",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 7),
                      Text(
                        "± 1 jam",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(width: 7),
                      Text(
                        "Pesanan diproses",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Ikuti Button
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Color(0xFF436850),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Ikuti",
                    style: TextStyle(
                      color: Color(0xFF436850),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
