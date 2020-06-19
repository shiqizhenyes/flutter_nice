import 'package:json_annotation/json_annotation.dart';
import 'package:nice/eleven/json/model/forecast.dart';


part 'data.g.dart';

@JsonSerializable()
class Data {

  Data(this.shidu, this.pm25, this.pm10, this.quality, this.wendu, this.ganmao, this.forecast);

  final String shidu;
  final String pm25;
  final String pm10;
  final String quality;
  final String wendu;
  final String ganmao;
  final Forecast forecast;


  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);


}