import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:motion_hack_1/widgets/loginbutton.dart';

class SumbangPage extends StatefulWidget {
  const SumbangPage({super.key});

  @override
  State<SumbangPage> createState() => _SumbangPageState();
}

class _SumbangPageState extends State<SumbangPage> {
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      topColor: Colors.white,
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFB),
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          title: Text("Donasi Ramah Lingkungan"),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jadikan barang tidak terpakai \nmenjadi permata",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5),

              // Donasi
              Text(
                "Salurkan permatamu!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.add_circle_rounded,
                        size: 150,
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("Kategori"),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Jumlah"),
                          ],
                        )
                      ],
                    ),
                    LoginButton(),
                  ],
                ),
              ),
              SizedBox(height: 10),

              // Riwayat Donasi
              Text(
                "Riwayat",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Row(
                  children: [
                    Image.asset("assets/icons/ic_fashion.png"),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fashion",
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
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
