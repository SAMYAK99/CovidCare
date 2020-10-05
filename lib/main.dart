import 'package:flutter/material.dart';
import 'Screens/SplashScreen.dart';

void main() {
  runApp(covidCare());
}

class covidCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(),debugShowCheckedModeBanner: false,);
  }
}