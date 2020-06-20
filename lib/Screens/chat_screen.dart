import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid-19 tracker'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl:
              'https://covid.apollo247.com/?utm_source=linkedin&utm_medium=organic&utm_campaign=bot_scanner',
        ),
      ),
    );
  }
}
