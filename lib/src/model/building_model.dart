import 'package:freezed_annotation/freezed_annotation.dart';

part 'building_model.g.dart';

part 'building_model.freezed.dart';

@freezed
class BuildingModel with _$BuildingModel {
  factory BuildingModel({
    @JsonKey(name: 'building_id') required String buildingId,
    @JsonKey(name: 'building_name') required String buildingName,
    @JsonKey(name: 'building_status') String? buildingStatus,
    @JsonKey(name: 'building_inner_image') required String buildingInnerImage,
    @JsonKey(name: 'building_emergency_image') required String buildingEmergencyImage,
    @JsonKey(name: 'building_select_image') required String buildingSelectImage,
    @JsonKey(name: 'building_security_image') required String buildingSecurityImage,
    @JsonKey(name: 'building_default_image') required String buildingDefaultImage,
    @JsonKey(name: 'site_id') required String siteId,
    @JsonKey(name: 'map_coordx') required int mapCoordx,
    @JsonKey(name: 'map_coordy') required int mapCoordy,
  }) = _BuildingModel;

  factory BuildingModel.fromJson(Map<String, dynamic> json) => _$BuildingModelFromJson(json);
}
