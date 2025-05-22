// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SystemModelImpl _$$SystemModelImplFromJson(Map<String, dynamic> json) =>
    _$SystemModelImpl(
      userId: json['user_id'] as String?,
      systemType: json['system_type'] as String?,
      workName: json['work_name'] as String?,
      workDatetime: json['work_datetime'] as String?,
    );

Map<String, dynamic> _$$SystemModelImplToJson(_$SystemModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'system_type': instance.systemType,
      'work_name': instance.workName,
      'work_datetime': instance.workDatetime,
    };
