import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/logoMotion.png'),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Text(
                        'Stevanus Wahyu',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '082225460996',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'stevanuswahyu@gmail.com',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 70),
            Column(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 67, 104, 80),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/profil');
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/transaksi');
                  },
                  child: Row(
                    children: [
                      Icon(Icons.article),
                      SizedBox(width: 10),
                      Text(
                        'Riwayat transaksi',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/tokoPil');
                  },
                  child: Row(
                    children: [
                      Icon(Icons.storefront),
                      SizedBox(width: 10),
                      Text(
                        'Toko Pilihan',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pengaturan",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            GestureDetector(
              onTap: () {
                // Action for Bahasa / Language
              },
              child: Row(
                children: [
                  Icon(Icons.language),
                  SizedBox(width: 10),
                  Text(
                    'Bahasa / Language',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Action for Ganti Password
              },
              child: Row(
                children: [
                  Icon(Icons.lock),
                  SizedBox(width: 10),
                  Text(
                    'Ganti Password',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 67, 104, 80),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
                child: Container(
                  height: 40,
                  width: 141,
                  child: Center(
                    child: Text(
                      "Keluar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
