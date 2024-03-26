import 'package:flutter/material.dart';
import 'package:motion_hack_1/pages/alamat/alamatBaru.dart';
import 'package:motion_hack_1/pages/alamat/alamatTersedia.dart';
import 'package:motion_hack_1/screen/MainScreen.dart';
import 'package:motion_hack_1/widgets/homepage/CustomSearchBar.dart';

class DaftarAlamatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
        ),
        title: Center(child: Text('Daftar Alamat')),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AlamatBaru()));
            },
            child: Container(
              height: 24,
              width: 24,
              child: Image.asset(
                'assets/icons/ic_add.png',
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(25),
          child: Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          constraints: BoxConstraints(maxWidth: 600),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 60,
                  width: 4000,
                  child: CustomSearchBar(hintText: 'Cari Alamat')),
              SizedBox(height: 20),
              AlamatTersediaWidget(
                namaKos: 'Kos Stevanus',
                namaPengguna: 'Stevanus Wahyu',
                noTelp: '082225460996',
                alamat:
                    'Kost Sukabirus Jl. Jalan 123 Bojongsoang, Kabupaten Bandung, Jawa Barat',
                onTapUbahAlamat: () {},
              ),
              AlamatTersediaWidget(
                namaKos: 'Rumah Stevan',
                namaPengguna: 'Stevanus Wahyu',
                noTelp: '082225460996',
                alamat:
                    'Kost Sukabirus Jl. Jalan 123 Bojongsoang, Kabupaten Bandung, Jawa Barat',
                onTapUbahAlamat: () {},
              ),
              AlamatTersediaWidget(
                namaKos: 'Kos Shodiq',
                namaPengguna: 'Nur Shodiq',
                noTelp: '081208120812',
                alamat:
                    'Kost Sukabirus Jl. Jalan 123 Bojongsoang, Kabupaten Bandung, Jawa Barat',
                onTapUbahAlamat: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
