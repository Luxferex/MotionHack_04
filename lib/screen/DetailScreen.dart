import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product image
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("assets/images/test123.png"),
              ),
              SizedBox(height: 10),

              // Product name
              Container(
                margin: EdgeInsets.only(right: 50),
                child: Text(
                  "Reusable Cotton Pad Kapas Daur Ulang",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Product price
              Text(
                "Rp. 10.500",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),

              // Product rating and reviews
              Row(
                children: [
                  // rating
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 3),
                  Text("4.5"),
                  SizedBox(width: 20),
                  // reviews
                  Text("863 Reviews")
                ],
              ),
              SizedBox(height: 10),

              // Product description
              Text(
                "Deskripsi Produk",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                "Reusable Cotton Pads terbuat dari serat bambu yang SANGAT LEMBUT dengan daya serap tinggi dan sangat breathable. Produk ini digunakan sebagai pengganti kapas wajah sekali pakai dan dapat digunakan berulang kali hingga kurang lebih 1000x pemakaian. \n\nMaterial : Bamboo Cotton (70% Bamboo+ 30% cotton)\nLayer Size : 8cm\nWarna : Putih\n\nPetunjuk perawatan : Setelah penggunaan, cuci dengan detergen lembut dan air hangat untuk menjaga tekstur dan daya serap pads. Hindari cahaya matahari langsung saat menjemur karena suhu yang terlalu tinggi dapat mengakibatkan kain menyusut atau berubah bentuk (suhu maksimum 30-40 Celcius)",
              ),

              // Toko
              Container(
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
              ))

              // Produk lainnya
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 25.0),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xFF12372A),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Beli sekarang",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
