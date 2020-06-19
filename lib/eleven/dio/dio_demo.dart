import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DioState();
}

class _DioState extends State<DioDemo> {


  String _text="";

  Dio _dio;

  void _requestBaiDu() async{
    _dio = Dio();
    Response response = await _dio.get("http://www.baidu.com");
    setState(() {
      _text = response.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DioDemo"),
      ),
      body: SingleChildScrollView(
        child: Text("$_text"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _requestBaiDu();
      }, child: Text("go", style: TextStyle(color: Colors.white),),),
    );
  }


}