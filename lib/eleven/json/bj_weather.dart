import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nice/eleven/json/api.dart';

class BJWeather extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BJWeatherState();

}
class _BJWeatherState extends State<BJWeather> {



  void getBJWeather() {
//    _dio.getUri(Api.weather.toString())
  }

  Dio _dio;

  @override
  void initState() {
    super.initState();
    _dio = Dio();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BJWeather"),
      ),
    );
  }

}