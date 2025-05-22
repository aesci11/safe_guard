import 'package:freezed_annotation/freezed_annotation.dart';

part 'sensor_model.freezed.dart';
part 'sensor_model.g.dart';

@freezed
class SensorModel with _$SensorModel {
  const factory SensorModel({
    @JsonKey(name: 'sensor_id') required String sensorId,
    @JsonKey(name: 'building_id') required String buildingId,
    @JsonKey(name: 'building_name') required String buildingName,
    @JsonKey(name: 'site_id') required String siteId,
    @JsonKey(name: 'sensor_kind') required String sensorKind,
    @JsonKey(name: 'sensor_name') required String sensorName,
    @JsonKey(name: 'map_coordx') required String mapCoordx,
    @JsonKey(name: 'map_coordy') required String mapCoordy,
    @JsonKey(name: 'sensor_status') String? sensorStatus,
  }) = _SensorModel;

  factory SensorModel.fromJson(Map<String, dynamic> json) => _$SensorModelFromJson(json);
}
