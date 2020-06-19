import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

class HttpClientDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HttpClientState();
}

class _HttpClientState extends State<HttpClientDemo> {


  HttpClient _client = HttpClient();

  String _text;

  void _requestBaiDu() async {

   HttpClientRequest request = await _client.getUrl(Uri.parse("https://www.baidu.com"));
   request.headers.add("user-agent",
       "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");
   HttpClientResponse response = await request.close();
   String _textTemp = await response.transform(utf8.decoder).join();
   _client.close();
   setState(() {
     _text = _textTemp;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HttpClientDemo"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text("$_text")
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _requestBaiDu();
      }, child: Text("go", style: TextStyle(color: Colors.white),),),
    );
  }


}