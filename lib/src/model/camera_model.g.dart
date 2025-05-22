// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camera_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CameraModelImpl _$$CameraModelImplFromJson(Map<String, dynamic> json) =>
    _$CameraModelImpl(
      cameraId: json['camera_id'] as String,
      buildingId: json['building_id'] as String,
      cameraKind: json['camera_kind'] as String,
      cameraName: json['camera_name'] as String,
      mapCoordx: (json['map_coordx'] as num?)?.toInt(),
      mapCoordy: (json['map_coordy'] as num?)?.toInt(),
      cameraIconViewAngle: json['camera_icon_viewangle'] as String?,
      externalUrl: json['external_url'] as String?,
      rtspPort: (json['rtsp_port'] as num).toInt(),
      streamCif: json['stream_cif'] as String?,
      streamD1: json['stream_d1'] as String?,
    );

Map<String, dynamic> _$$CameraModelImplToJson(_$CameraModelImpl instance) =>
    <String, dynamic>{
      'camera_id': instance.cameraId,
      'building_id': instance.buildingId,
      'camera_kind': instance.cameraKind,
      'camera_name': instance.cameraName,
      'map_coordx': instance.mapCoordx,
      'map_coordy': instance.mapCoordy,
      'camera_icon_viewangle': instance.cameraIconViewAngle,
      'external_url': instance.externalUrl,
      'rtsp_port': instance.rtspPort,
      'stream_cif': instance.streamCif,
      'stream_d1': instance.streamD1,
    };
