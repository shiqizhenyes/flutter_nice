
import 'package:json_annotation/json_annotation.dart';
import 'package:nice/eleven/json/model/city_info.dart';
import 'package:nice/eleven/json/model/data.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {

  Weather(this.message, this.status, this.data, this.time, this.date, this.cityInfo,);

  final String message;
  final String status;
  final String date;
  final String time;
  final CityInfo cityInfo;
  final Data data;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);


}