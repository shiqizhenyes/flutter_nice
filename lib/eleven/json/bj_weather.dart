import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nice/eleven/json/api.dart';
import 'package:nice/eleven/json/model/weather.dart';

class BJWeather extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BJWeatherState();

}
class _BJWeatherState extends State<BJWeather> {

  Weather _weather;

  void getBJWeather() async {
    Response response = await _dio.getUri(Uri.parse(Api.weather));
    var responseData = response.data;
//    print("zack  "+ dataStr);
//    responseData = jsonDecode(responseData);
    setState(() {
      _weather = Weather.fromJson(responseData);
    });
//    print("message " + weather.message);

//    weather.data.forecast.forEach((element) {
//      print(element.notice);
//    });

  }

  Dio _dio;

  @override
  void initState() {
    super.initState();
    _dio = Dio();
    getBJWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BJWeather"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(title: Text("${_weather.data.forecast[index].notice}"),);
      },
      itemCount: _weather.data.forecast.length,),
    );
  }

}