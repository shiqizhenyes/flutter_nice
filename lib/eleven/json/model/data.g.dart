// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    json['shidu'] as String,
    json['pm25'] as String,
    json['pm10'] as String,
    json['quality'] as String,
    json['wendu'] as String,
    json['ganmao'] as String,
    json['forecast'] == null
        ? null
        : Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'shidu': instance.shidu,
      'pm25': instance.pm25,
      'pm10': instance.pm10,
      'quality': instance.quality,
      'wendu': instance.wendu,
      'ganmao': instance.ganmao,
      'forecast': instance.forecast,
    };
