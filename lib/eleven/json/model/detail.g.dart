// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return Detail(
    json['date'] as String,
    json['high'] as String,
    json['low'] as String,
    json['ymd'] as String,
    json['week'] as String,
    json['sunrise'] as String,
    json['sunset'] as String,
    json['aqi'] as int,
    json['fx'] as String,
    json['fl'] as String,
    json['type'] as String,
    json['notice'] as String,
  );
}

Map<String, dynamic> _$DetailToJson(Detail instance) => <String, dynamic>{
      'date': instance.date,
      'high': instance.high,
      'low': instance.low,
      'ymd': instance.ymd,
      'week': instance.week,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'aqi': instance.aqi,
      'fx': instance.fx,
      'fl': instance.fl,
      'type': instance.type,
      'notice': instance.notice,
    };
