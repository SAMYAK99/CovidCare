import 'package:covidcare/main.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class chatbot extends StatefulWidget {
  @override
  _chatbotState createState() => _chatbotState();
}

class _chatbotState extends State<chatbot> {
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
              'Chat Bot Screen',
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
        index: 1,
        onTap: (index) {
          //Handle button tap
          if (index == 0) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => covidCare()));
          }
        },
        animationCurve: Curves.bounceInOut,
      ),
    );
  }
}
