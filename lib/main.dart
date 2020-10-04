import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'Screens/bottom_navigation.dart';

void main() {
  runApp(covidCare());
}

class covidCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(),debugShowCheckedModeBanner: false,);
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/splash.png',
      nextScreen: BottomNavScreen(),
      splashTransition: SplashTransition.scaleTransition,
    );
  }
}
