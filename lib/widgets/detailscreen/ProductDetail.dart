import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ],
      ),
    );
  }
}
