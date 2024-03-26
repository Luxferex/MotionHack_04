import 'package:flutter/material.dart';

class AlamatTersediaWidget extends StatelessWidget {
  final String? namaKos;
  final String? namaPengguna;
  final String? noTelp;
  final String? alamat;
  final VoidCallback onTapUbahAlamat;

  const AlamatTersediaWidget({
    Key? key,
    required this.namaKos,
    required this.namaPengguna,
    required this.noTelp,
    required this.alamat,
    required this.onTapUbahAlamat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$namaKos',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            '$namaPengguna',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            '$noTelp',
            style: TextStyle(color: Color.fromARGB(255, 67, 104, 80)),
          ),
          SizedBox(height: 8.0),
          Text(
            '$alamat',
            style: TextStyle(
                color: Color.fromARGB(255, 67, 104, 80), fontSize: 14),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: onTapUbahAlamat,
            child: Text('Ubah Alamat'),
          ),
        ],
      ),
    );
  }
}
