import 'package:covidcare/Chatbot.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Covid Care',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 18.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.purpleAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home Page',
              style: TextStyle(
                fontSize: 25.0,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.purpleAccent,
        buttonBackgroundColor: Colors.white,
        height: 60,
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.map, size: 30),
          Icon(Icons.chat, size: 30),
        ],
        animationDuration: Duration(
          milliseconds: 200,
        ),
        onTap: (index) {
          if (index == 2) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => chatbot()));
          }
        },
        animationCurve: Curves.bounceInOut,
      ),
    );
  }
}
