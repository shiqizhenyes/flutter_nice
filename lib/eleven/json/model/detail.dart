
import 'package:json_annotation/json_annotation.dart';

part 'detail.g.dart';

@JsonSerializable()
class Detail {

  Detail(this.date, this.high, this.low, this.ymd, this.week, this.sunrise, this.sunset, this.aqi, this.fx, this.fl, this.type, this.notice);

  final String date;
  final String high;
  final String low;
  final String ymd;
  final String week;
  final String sunrise;
  final String sunset;
  final int aqi;
  final String fx;
  final String fl;
  final String type;
  final String notice;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);

  Map<String, dynamic> toJson() => _$DetailToJson(this);


}