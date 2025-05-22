import 'package:freezed_annotation/freezed_annotation.dart';

part 'smoke_sensor_model.freezed.dart';
part 'smoke_sensor_model.g.dart';

@freezed
class SmokeSensorModel with _$SmokeSensorModel {
  const factory SmokeSensorModel({
    @JsonKey(name: 'sensor_ID') required String sensorId,
    @JsonKey(name: 'smoke_max_value') required double smokeMaxValue,
    @JsonKey(name: 'temper_max_value') required double temperatureMaxValue,
    @JsonKey(name: 'humidity_max_value') required double humidityMaxValue,
    @JsonKey(name: 'smoke_value') required double smokeValue,
    @JsonKey(name: 'temperature_value') required double temperatureValue,
    @JsonKey(name: 'humidity_value') required double humidityValue,
  }) = _SmokeSensorModel;

  factory SmokeSensorModel.fromJson(Map<String, dynamic> json) => _$SmokeSensorModelFromJson(json);
}
