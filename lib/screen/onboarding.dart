import 'package:flutter/material.dart';
import 'package:motion_hack_1/screen/VarText.dart';
import 'package:motion_hack_1/screen/VarScreen.dart';

class MyApp extends StatelessWidget {
  Color primary = Color.fromARGB(255, 18, 55, 42);
  MyApp({
    required this.primary,
  });
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'intro screen demo',
        theme: ThemeData(
          primaryColor: primary,
        ),
        home: OnBoarding(),
        debugShowCheckedModeBanner: false,
      );
}

class OnBoarding extends StatefulWidget {
  @override
  OnBoardingState createState() => OnBoardingState();
}

class OnBoardingState extends State<OnBoarding> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(
      onDone: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => NextPage(),
        ),
      ),
      onSkip: () => print('Skipping the intro slides'),
      footerBgColor: Color.fromARGB(255, 18, 55, 42),
      activeDotColor: Colors.white,
      footerRadius: 18.0,
      slides: [
        IntroScreen(
          title: 'Produk ramah lingkungan\nberkualitas',
          imageAsset: 'assets/boarding1.png',
          description: 'Dapatkan barangmu tanpa takut mencemari lingkungan',
          headerBgColor: Colors.white,
        ),
        IntroScreen(
          title: 'Pelayanan cepat dan praktis',
          headerBgColor: Colors.white,
          imageAsset: 'assets/boarding2.png',
          description: "Pelayanan cepat barang aman",
        ),
        IntroScreen(
          title: 'Semua berguna',
          headerBgColor: Colors.white,
          imageAsset: 'assets/boarding3.png',
          description: "Donasikan barang bekasmu supaya bernilai",
        ),
      ],
    );

    return Scaffold(
      body: screens,
    );
  }
}

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) => Container(
        color: Colors.white,
      );
}
