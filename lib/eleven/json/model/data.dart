import 'package:json_annotation/json_annotation.dart';
import 'package:nice/eleven/json/model/detail.dart';


part 'data.g.dart';

@JsonSerializable()
class Data {

  Data(this.shidu, this.pm25, this.pm10, this.quality, this.wendu, this.ganmao,
      this.forecast, this.yesterday);

  final String shidu;
  final double pm25;
  final double pm10;
  final String quality;
  final String wendu;
  final String ganmao;
  final List<Detail> forecast;
  final Detail yesterday;


  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);


}