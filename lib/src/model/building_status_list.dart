import 'package:freezed_annotation/freezed_annotation.dart';

part 'building_status_list.g.dart';

part 'building_status_list.freezed.dart';

@freezed
class BuildingStatusList with _$BuildingStatusList {
  const factory BuildingStatusList({
    @JsonKey(name: 'building_id') required String buildingId,
    @JsonKey(name: 'building_status') required String buildingStatus,
    @JsonKey(name: 'building_security') required int buildingSecurity,
  }) = _BuildingStatusList;

  factory BuildingStatusList.fromJson(Map<String, dynamic> json) => _$BuildingStatusListFromJson(json);
}
