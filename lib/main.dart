import 'package:flutter/material.dart';
import 'package:covidcare/Screens/bottom_navigation.dart';

void main() {
  runApp(covidCare());
}

class covidCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavScreen(),
    );
  }
}
