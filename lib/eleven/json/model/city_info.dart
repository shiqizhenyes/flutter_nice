

import 'package:json_annotation/json_annotation.dart';


part 'city_info.g.dart';

@JsonSerializable()
class CityInfo {

  CityInfo(this.city, this.citykey, this.parent, this.updateTime);
  final String city;
  final String citykey;
  final String parent;
  final String updateTime;

  factory CityInfo.fromJson(Map<String, dynamic> json) => _$CityInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CityInfoToJson(this);

}