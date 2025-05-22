// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryModelImpl _$$HistoryModelImplFromJson(Map<String, dynamic> json) =>
    _$HistoryModelImpl(
      sensorId: json['sensor_id'] as String?,
      alarmId: json['alarm_id'] as String?,
      buildingName: json['building_name'] as String?,
      alarmDescription: json['alarm_description'] as String?,
      alarmCollectDatetime: json['alarm_collec_datetime'] as String?,
      occurFlag: json['occur_flag'] as String?,
      insertDatetime: json['insert_datetime'] as String?,
      pushSendFlag: json['push_send_flag'] as String?,
    );

Map<String, dynamic> _$$HistoryModelImplToJson(_$HistoryModelImpl instance) =>
    <String, dynamic>{
      'sensor_id': instance.sensorId,
      'alarm_id': instance.alarmId,
      'building_name': instance.buildingName,
      'alarm_description': instance.alarmDescription,
      'alarm_collec_datetime': instance.alarmCollectDatetime,
      'occur_flag': instance.occurFlag,
      'insert_datetime': instance.insertDatetime,
      'push_send_flag': instance.pushSendFlag,
    };
