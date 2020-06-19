// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
    json['message'] as String,
    json['status'] as int,
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    json['time'] as String,
    json['date'] as String,
    json['cityInfo'] == null
        ? null
        : CityInfo.fromJson(json['cityInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'date': instance.date,
      'time': instance.time,
      'cityInfo': instance.cityInfo,
      'data': instance.data,
    };
