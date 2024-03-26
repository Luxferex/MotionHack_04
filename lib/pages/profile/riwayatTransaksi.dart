import 'package:flutter/material.dart';

class RiwayatTransaksi extends StatelessWidget {
  const RiwayatTransaksi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Transaksi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hai, ini adalah halaman riwayat transaksi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Tambahkan widget lain untuk menampilkan riwayat transaksi
          ],
        ),
      ),
    );
  }
}
