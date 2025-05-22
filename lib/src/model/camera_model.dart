import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_model.g.dart';

part 'camera_model.freezed.dart';

@freezed
class CameraModel with _$CameraModel {
  const factory CameraModel({
    @JsonKey(name: 'camera_id') required String cameraId,
    @JsonKey(name: 'building_id') required String buildingId,
    @JsonKey(name: 'camera_kind') required String cameraKind,
    @JsonKey(name: 'camera_name') required String cameraName,
    @JsonKey(name: 'map_coordx') int? mapCoordx,
    @JsonKey(name: 'map_coordy') int? mapCoordy,
    @JsonKey(name: 'camera_icon_viewangle') String? cameraIconViewAngle,
    @JsonKey(name: 'external_url') String? externalUrl,
    @JsonKey(name: 'rtsp_port') required int rtspPort,
    @JsonKey(name: 'stream_cif') String? streamCif,
    @JsonKey(name: 'stream_d1') String? streamD1,
  }) = _CameraModel;

  factory CameraModel.fromJson(Map<String, dynamic> json) => _$CameraModelFromJson(json);
}
