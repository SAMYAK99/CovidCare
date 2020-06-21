import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quick Information'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl:
              'https://www.bing.com/covid/local/raipur_chhattisgarh_india?form=C19ANS',
        ),
      ),
    );
  }
}
