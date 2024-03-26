import 'package:flutter/material.dart';
import 'package:motion_hack_1/pages/HomePage.dart';
import 'package:motion_hack_1/screen/VarText.dart';
import 'package:motion_hack_1/screen/VarScreen.dart';

class MyApp extends StatelessWidget {
  Color primary = Color.fromARGB(255, 18, 55, 42);
  MyApp({
    required this.primary,
  });
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'onboarding',
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
          builder: (context) => HomePage(),
        ),
      ),
      footerBgColor: Color.fromARGB(255, 18, 55, 42),
      activeDotColor: Colors.white,
      footerRadius: 18.0,
      slides: [
        varText(
          title: 'Produk ramah lingkungan\nberkualitas',
          imageAsset: 'assets/boarding1.png',
          description: 'Dapatkan barangmu tanpa \ntakut mencemari lingkungan',
          headerBgColor: Colors.white,
        ),
        varText(
          title: 'Pelayanan cepat dan praktis',
          headerBgColor: Colors.white,
          imageAsset: 'assets/boarding2.png',
          description: "Pelayanan cepat barang aman",
        ),
        varText(
          title: 'Semua berguna',
          imageAsset: 'assets/boarding3.png',
          description: 'Donasikan barang bekasmu \nsupaya bernilai',
          headerBgColor: Colors.white,
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
