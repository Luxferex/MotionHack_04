import 'package:flutter/material.dart';
import 'package:motion_hack_1/pages/alamat/mainAlamat.dart';

class AlamatBaru extends StatelessWidget {
  const AlamatBaru({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DaftarAlamatPage()),
            );
          },
        ),
        title: Center(child: Text('Alamat Baru')),
        actions: [
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to left
            children: [
              KolomAlamat(
                text: "Dimana Anda Berada",
                hintText: 'Tempat Tinggal Saat Ini',
              ),
              SizedBox(
                height: 40,
              ),
              KolomAlamat(
                text: "Alamat Lengkap",
                hintText: 'Alamat Lengkap Baru',
              ),
              SizedBox(
                height: 40,
              ),
              KolomAlamat(
                text: "Nama Lengkap",
                hintText: 'Nama Lengkap Baru',
              ),
              SizedBox(
                height: 40,
              ),
              KolomAlamat(
                text: "Nama Panggilan",
                hintText: 'Nama Panggilan Baru',
              ),
              SizedBox(
                height: 40,
              ),
              KolomAlamat(
                text: 'Nama HP ',
                hintText: 'Nama HP Kamu',
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: AlamatbaruButton(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class KolomAlamat extends StatelessWidget {
  final String text;
  final String hintText;
  const KolomAlamat({super.key, required this.text, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Dimana Anda Berada",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Tempat Tinggal Saat Ini',
          ),
        )
      ],
    );
  }
}

class AlamatbaruButton extends StatelessWidget {
  const AlamatbaruButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Color(0xFF12372A), // Warna latar belakang
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/alamat');
        },
        child: Container(
          height: 38,
          width: 260,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tambah Alamat",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
