// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building_status_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BuildingStatusListImpl _$$BuildingStatusListImplFromJson(
        Map<String, dynamic> json) =>
    _$BuildingStatusListImpl(
      buildingId: json['building_id'] as String,
      buildingStatus: json['building_status'] as String,
      buildingSecurity: (json['building_security'] as num).toInt(),
    );

Map<String, dynamic> _$$BuildingStatusListImplToJson(
        _$BuildingStatusListImpl instance) =>
    <String, dynamic>{
      'building_id': instance.buildingId,
      'building_status': instance.buildingStatus,
      'building_security': instance.buildingSecurity,
    };
