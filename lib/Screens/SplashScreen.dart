import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_navigation.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  var state;
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    openStartPage();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

   

    controller.forward();
  }

  openStartPage() async {
    await Future.delayed(
      Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => BottomNavScreen()
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FadeTransition(
        opacity: animation,
        child: Container(
          alignment: Alignment.center,
          child: Transform.scale(
            scale: 0.6,
            alignment: AlignmentDirectional.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/splash.png',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
