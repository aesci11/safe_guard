// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SensorModelImpl _$$SensorModelImplFromJson(Map<String, dynamic> json) =>
    _$SensorModelImpl(
      sensorId: json['sensor_id'] as String,
      buildingId: json['building_id'] as String,
      buildingName: json['building_name'] as String,
      siteId: json['site_id'] as String,
      sensorKind: json['sensor_kind'] as String,
      sensorName: json['sensor_name'] as String,
      mapCoordx: json['map_coordx'] as String,
      mapCoordy: json['map_coordy'] as String,
      sensorStatus: json['sensor_status'] as String?,
    );

Map<String, dynamic> _$$SensorModelImplToJson(_$SensorModelImpl instance) =>
    <String, dynamic>{
      'sensor_id': instance.sensorId,
      'building_id': instance.buildingId,
      'building_name': instance.buildingName,
      'site_id': instance.siteId,
      'sensor_kind': instance.sensorKind,
      'sensor_name': instance.sensorName,
      'map_coordx': instance.mapCoordx,
      'map_coordy': instance.mapCoordy,
      'sensor_status': instance.sensorStatus,
    };
