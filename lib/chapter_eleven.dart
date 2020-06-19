import 'package:flutter/material.dart';
import 'package:nice/eleven/dio/chunk_download.dart';
import 'package:nice/eleven/dio/dio_demo.dart';
import 'package:nice/eleven/http_client/http_clent_demo.dart';
import 'package:nice/eleven/io/io_operation_demo.dart';
import 'package:nice/eleven/json/bj_weather.dart';
import 'package:nice/eleven/json/json_model_demo.dart';
import 'package:nice/eleven/json/user_list_demo.dart';
import 'package:nice/eleven/web_socket/web_socket_demo.dart';
import 'package:nice/eleven/web_socket/web_socket_sdk_demo.dart';


class ChapterEleven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChapterEleven"),
      ),
      body: Container(
        child: Wrap(
          children: <Widget>[
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return IoOperationDemo();
              }));
            }, child: Text("IO")),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HttpClientDemo();
              }));
            }, child: Text("HttpClient")),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DioDemo();
              }));
            }, child: Text("Dio")),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ChunkDownload();
              }));
            }, child: Text("ChunkDownload")),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return WebSocketDemo();
              }));
            }, child: Text("WebSocket")),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return WebSocketSdkDemo();
              }));
            }, child: Text("WebSocketSdk")),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return JsonModelDemo();
              }));
            }, child: Text("JsonModel")),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return UsersListDemo();
              }));
            }, child: Text("UsersList")),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BJWeather();
              }));
            }, child: Text("BJWeather")),
          ],
        ),
      ),
    );
  }
  
  
}