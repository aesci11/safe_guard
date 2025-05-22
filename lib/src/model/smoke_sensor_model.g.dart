// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smoke_sensor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SmokeSensorModelImpl _$$SmokeSensorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SmokeSensorModelImpl(
      sensorId: json['sensor_ID'] as String,
      smokeMaxValue: (json['smoke_max_value'] as num).toDouble(),
      temperatureMaxValue: (json['temper_max_value'] as num).toDouble(),
      humidityMaxValue: (json['humidity_max_value'] as num).toDouble(),
      smokeValue: (json['smoke_value'] as num).toDouble(),
      temperatureValue: (json['temperature_value'] as num).toDouble(),
      humidityValue: (json['humidity_value'] as num).toDouble(),
    );

Map<String, dynamic> _$$SmokeSensorModelImplToJson(
        _$SmokeSensorModelImpl instance) =>
    <String, dynamic>{
      'sensor_ID': instance.sensorId,
      'smoke_max_value': instance.smokeMaxValue,
      'temper_max_value': instance.temperatureMaxValue,
      'humidity_max_value': instance.humidityMaxValue,
      'smoke_value': instance.smokeValue,
      'temperature_value': instance.temperatureValue,
      'humidity_value': instance.humidityValue,
    };
