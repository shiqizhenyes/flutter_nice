
import 'package:json_annotation/json_annotation.dart';

part 'forecast.g.dart';

@JsonSerializable()
class Forecast {

  Forecast(this.date, this.high, this.low, this.ymd, this.week, this.sunrise, this.sunset, this.aqi, this.fx, this.fl, this.type, this.notice);

  final String date;
  final String high;
  final String low;
  final String ymd;
  final String week;
  final String sunrise;
  final String sunset;
  final String aqi;
  final String fx;
  final String fl;
  final String type;
  final String notice;

  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastToJson(this);


}