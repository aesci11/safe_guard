// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BuildingModelImpl _$$BuildingModelImplFromJson(Map<String, dynamic> json) =>
    _$BuildingModelImpl(
      buildingId: json['building_id'] as String,
      buildingName: json['building_name'] as String,
      buildingStatus: json['building_status'] as String?,
      buildingInnerImage: json['building_inner_image'] as String,
      buildingEmergencyImage: json['building_emergency_image'] as String,
      buildingSelectImage: json['building_select_image'] as String,
      buildingSecurityImage: json['building_security_image'] as String,
      buildingDefaultImage: json['building_default_image'] as String,
      siteId: json['site_id'] as String,
      mapCoordx: (json['map_coordx'] as num).toInt(),
      mapCoordy: (json['map_coordy'] as num).toInt(),
    );

Map<String, dynamic> _$$BuildingModelImplToJson(_$BuildingModelImpl instance) =>
    <String, dynamic>{
      'building_id': instance.buildingId,
      'building_name': instance.buildingName,
      'building_status': instance.buildingStatus,
      'building_inner_image': instance.buildingInnerImage,
      'building_emergency_image': instance.buildingEmergencyImage,
      'building_select_image': instance.buildingSelectImage,
      'building_security_image': instance.buildingSecurityImage,
      'building_default_image': instance.buildingDefaultImage,
      'site_id': instance.siteId,
      'map_coordx': instance.mapCoordx,
      'map_coordy': instance.mapCoordy,
    };
