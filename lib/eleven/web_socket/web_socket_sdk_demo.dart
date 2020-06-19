import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

///有bug
class WebSocketSdkDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WebSocketSdk();
}

class _WebSocketSdk extends State<WebSocketSdkDemo> {

  TextEditingController _controller = TextEditingController();
  var _text = "";

  var _data = "";

  var url = 'ws://123.207.136.134:9010/ajaxchattest';

  WebSocket socket;

  void _connect() async{
    socket = await WebSocket.connect(url);
    socket.add("data");
    var response = await socket.transform(utf8.decoder).join();
    print("zack $response");
//    socket.listen((event) {
//      print(event);
//    });
//    socket.last.asStream();
  }

  void _send(msg) {
    socket.add(msg);
  }

  @override
  void initState() {
    super.initState();
    _connect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebSocketSdkDemo"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              onChanged: (text) {
                _text = text;
              },
            ),
            Text("$_data")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _send(_text);
      }, child: Icon(Icons.send),),
    );
  }
}