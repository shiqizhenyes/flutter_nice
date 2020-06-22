import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PlatformViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PlatformViewState();
}

class _PlatformViewState extends State<PlatformViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PlatformViewDemo"),
      ),
      body: Center(
        child: WebView(
          initialUrl: "https://flutterchina.club",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }


}