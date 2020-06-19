// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityInfo _$CityInfoFromJson(Map<String, dynamic> json) {
  return CityInfo(
    json['city'] as String,
    json['citykey'] as String,
    json['parent'] as String,
    json['updateTime'] as String,
  );
}

Map<String, dynamic> _$CityInfoToJson(CityInfo instance) => <String, dynamic>{
      'city': instance.city,
      'citykey': instance.citykey,
      'parent': instance.parent,
      'updateTime': instance.updateTime,
    };
