// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CameraModel _$CameraModelFromJson(Map<String, dynamic> json) {
  return _CameraModel.fromJson(json);
}

/// @nodoc
mixin _$CameraModel {
  @JsonKey(name: 'camera_id')
  String get cameraId => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_id')
  String get buildingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'camera_kind')
  String get cameraKind => throw _privateConstructorUsedError;
  @JsonKey(name: 'camera_name')
  String get cameraName => throw _privateConstructorUsedError;
  @JsonKey(name: 'map_coordx')
  int? get mapCoordx => throw _privateConstructorUsedError;
  @JsonKey(name: 'map_coordy')
  int? get mapCoordy => throw _privateConstructorUsedError;
  @JsonKey(name: 'camera_icon_viewangle')
  String? get cameraIconViewAngle => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_url')
  String? get externalUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'rtsp_port')
  int get rtspPort => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_cif')
  String? get streamCif => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_d1')
  String? get streamD1 => throw _privateConstructorUsedError;

  /// Serializes this CameraModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CameraModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CameraModelCopyWith<CameraModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraModelCopyWith<$Res> {
  factory $CameraModelCopyWith(
          CameraModel value, $Res Function(CameraModel) then) =
      _$CameraModelCopyWithImpl<$Res, CameraModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'camera_id') String cameraId,
      @JsonKey(name: 'building_id') String buildingId,
      @JsonKey(name: 'camera_kind') String cameraKind,
      @JsonKey(name: 'camera_name') String cameraName,
      @JsonKey(name: 'map_coordx') int? mapCoordx,
      @JsonKey(name: 'map_coordy') int? mapCoordy,
      @JsonKey(name: 'camera_icon_viewangle') String? cameraIconViewAngle,
      @JsonKey(name: 'external_url') String? externalUrl,
      @JsonKey(name: 'rtsp_port') int rtspPort,
      @JsonKey(name: 'stream_cif') String? streamCif,
      @JsonKey(name: 'stream_d1') String? streamD1});
}

/// @nodoc
class _$CameraModelCopyWithImpl<$Res, $Val extends CameraModel>
    implements $CameraModelCopyWith<$Res> {
  _$CameraModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraId = null,
    Object? buildingId = null,
    Object? cameraKind = null,
    Object? cameraName = null,
    Object? mapCoordx = freezed,
    Object? mapCoordy = freezed,
    Object? cameraIconViewAngle = freezed,
    Object? externalUrl = freezed,
    Object? rtspPort = null,
    Object? streamCif = freezed,
    Object? streamD1 = freezed,
  }) {
    return _then(_value.copyWith(
      cameraId: null == cameraId
          ? _value.cameraId
          : cameraId // ignore: cast_nullable_to_non_nullable
              as String,
      buildingId: null == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String,
      cameraKind: null == cameraKind
          ? _value.cameraKind
          : cameraKind // ignore: cast_nullable_to_non_nullable
              as String,
      cameraName: null == cameraName
          ? _value.cameraName
          : cameraName // ignore: cast_nullable_to_non_nullable
              as String,
      mapCoordx: freezed == mapCoordx
          ? _value.mapCoordx
          : mapCoordx // ignore: cast_nullable_to_non_nullable
              as int?,
      mapCoordy: freezed == mapCoordy
          ? _value.mapCoordy
          : mapCoordy // ignore: cast_nullable_to_non_nullable
              as int?,
      cameraIconViewAngle: freezed == cameraIconViewAngle
          ? _value.cameraIconViewAngle
          : cameraIconViewAngle // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rtspPort: null == rtspPort
          ? _value.rtspPort
          : rtspPort // ignore: cast_nullable_to_non_nullable
              as int,
      streamCif: freezed == streamCif
          ? _value.streamCif
          : streamCif // ignore: cast_nullable_to_non_nullable
              as String?,
      streamD1: freezed == streamD1
          ? _value.streamD1
          : streamD1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CameraModelImplCopyWith<$Res>
    implements $CameraModelCopyWith<$Res> {
  factory _$$CameraModelImplCopyWith(
          _$CameraModelImpl value, $Res Function(_$CameraModelImpl) then) =
      __$$CameraModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'camera_id') String cameraId,
      @JsonKey(name: 'building_id') String buildingId,
      @JsonKey(name: 'camera_kind') String cameraKind,
      @JsonKey(name: 'camera_name') String cameraName,
      @JsonKey(name: 'map_coordx') int? mapCoordx,
      @JsonKey(name: 'map_coordy') int? mapCoordy,
      @JsonKey(name: 'camera_icon_viewangle') String? cameraIconViewAngle,
      @JsonKey(name: 'external_url') String? externalUrl,
      @JsonKey(name: 'rtsp_port') int rtspPort,
      @JsonKey(name: 'stream_cif') String? streamCif,
      @JsonKey(name: 'stream_d1') String? streamD1});
}

/// @nodoc
class __$$CameraModelImplCopyWithImpl<$Res>
    extends _$CameraModelCopyWithImpl<$Res, _$CameraModelImpl>
    implements _$$CameraModelImplCopyWith<$Res> {
  __$$CameraModelImplCopyWithImpl(
      _$CameraModelImpl _value, $Res Function(_$CameraModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraId = null,
    Object? buildingId = null,
    Object? cameraKind = null,
    Object? cameraName = null,
    Object? mapCoordx = freezed,
    Object? mapCoordy = freezed,
    Object? cameraIconViewAngle = freezed,
    Object? externalUrl = freezed,
    Object? rtspPort = null,
    Object? streamCif = freezed,
    Object? streamD1 = freezed,
  }) {
    return _then(_$CameraModelImpl(
      cameraId: null == cameraId
          ? _value.cameraId
          : cameraId // ignore: cast_nullable_to_non_nullable
              as String,
      buildingId: null == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String,
      cameraKind: null == cameraKind
          ? _value.cameraKind
          : cameraKind // ignore: cast_nullable_to_non_nullable
              as String,
      cameraName: null == cameraName
          ? _value.cameraName
          : cameraName // ignore: cast_nullable_to_non_nullable
              as String,
      mapCoordx: freezed == mapCoordx
          ? _value.mapCoordx
          : mapCoordx // ignore: cast_nullable_to_non_nullable
              as int?,
      mapCoordy: freezed == mapCoordy
          ? _value.mapCoordy
          : mapCoordy // ignore: cast_nullable_to_non_nullable
              as int?,
      cameraIconViewAngle: freezed == cameraIconViewAngle
          ? _value.cameraIconViewAngle
          : cameraIconViewAngle // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rtspPort: null == rtspPort
          ? _value.rtspPort
          : rtspPort // ignore: cast_nullable_to_non_nullable
              as int,
      streamCif: freezed == streamCif
          ? _value.streamCif
          : streamCif // ignore: cast_nullable_to_non_nullable
              as String?,
      streamD1: freezed == streamD1
          ? _value.streamD1
          : streamD1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CameraModelImpl implements _CameraModel {
  const _$CameraModelImpl(
      {@JsonKey(name: 'camera_id') required this.cameraId,
      @JsonKey(name: 'building_id') required this.buildingId,
      @JsonKey(name: 'camera_kind') required this.cameraKind,
      @JsonKey(name: 'camera_name') required this.cameraName,
      @JsonKey(name: 'map_coordx') this.mapCoordx,
      @JsonKey(name: 'map_coordy') this.mapCoordy,
      @JsonKey(name: 'camera_icon_viewangle') this.cameraIconViewAngle,
      @JsonKey(name: 'external_url') this.externalUrl,
      @JsonKey(name: 'rtsp_port') required this.rtspPort,
      @JsonKey(name: 'stream_cif') this.streamCif,
      @JsonKey(name: 'stream_d1') this.streamD1});

  factory _$CameraModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CameraModelImplFromJson(json);

  @override
  @JsonKey(name: 'camera_id')
  final String cameraId;
  @override
  @JsonKey(name: 'building_id')
  final String buildingId;
  @override
  @JsonKey(name: 'camera_kind')
  final String cameraKind;
  @override
  @JsonKey(name: 'camera_name')
  final String cameraName;
  @override
  @JsonKey(name: 'map_coordx')
  final int? mapCoordx;
  @override
  @JsonKey(name: 'map_coordy')
  final int? mapCoordy;
  @override
  @JsonKey(name: 'camera_icon_viewangle')
  final String? cameraIconViewAngle;
  @override
  @JsonKey(name: 'external_url')
  final String? externalUrl;
  @override
  @JsonKey(name: 'rtsp_port')
  final int rtspPort;
  @override
  @JsonKey(name: 'stream_cif')
  final String? streamCif;
  @override
  @JsonKey(name: 'stream_d1')
  final String? streamD1;

  @override
  String toString() {
    return 'CameraModel(cameraId: $cameraId, buildingId: $buildingId, cameraKind: $cameraKind, cameraName: $cameraName, mapCoordx: $mapCoordx, mapCoordy: $mapCoordy, cameraIconViewAngle: $cameraIconViewAngle, externalUrl: $externalUrl, rtspPort: $rtspPort, streamCif: $streamCif, streamD1: $streamD1)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraModelImpl &&
            (identical(other.cameraId, cameraId) ||
                other.cameraId == cameraId) &&
            (identical(other.buildingId, buildingId) ||
                other.buildingId == buildingId) &&
            (identical(other.cameraKind, cameraKind) ||
                other.cameraKind == cameraKind) &&
            (identical(other.cameraName, cameraName) ||
                other.cameraName == cameraName) &&
            (identical(other.mapCoordx, mapCoordx) ||
                other.mapCoordx == mapCoordx) &&
            (identical(other.mapCoordy, mapCoordy) ||
                other.mapCoordy == mapCoordy) &&
            (identical(other.cameraIconViewAngle, cameraIconViewAngle) ||
                other.cameraIconViewAngle == cameraIconViewAngle) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.rtspPort, rtspPort) ||
                other.rtspPort == rtspPort) &&
            (identical(other.streamCif, streamCif) ||
                other.streamCif == streamCif) &&
            (identical(other.streamD1, streamD1) ||
                other.streamD1 == streamD1));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cameraId,
      buildingId,
      cameraKind,
      cameraName,
      mapCoordx,
      mapCoordy,
      cameraIconViewAngle,
      externalUrl,
      rtspPort,
      streamCif,
      streamD1);

  /// Create a copy of CameraModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraModelImplCopyWith<_$CameraModelImpl> get copyWith =>
      __$$CameraModelImplCopyWithImpl<_$CameraModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CameraModelImplToJson(
      this,
    );
  }
}

abstract class _CameraModel implements CameraModel {
  const factory _CameraModel(
      {@JsonKey(name: 'camera_id') required final String cameraId,
      @JsonKey(name: 'building_id') required final String buildingId,
      @JsonKey(name: 'camera_kind') required final String cameraKind,
      @JsonKey(name: 'camera_name') required final String cameraName,
      @JsonKey(name: 'map_coordx') final int? mapCoordx,
      @JsonKey(name: 'map_coordy') final int? mapCoordy,
      @JsonKey(name: 'camera_icon_viewangle') final String? cameraIconViewAngle,
      @JsonKey(name: 'external_url') final String? externalUrl,
      @JsonKey(name: 'rtsp_port') required final int rtspPort,
      @JsonKey(name: 'stream_cif') final String? streamCif,
      @JsonKey(name: 'stream_d1') final String? streamD1}) = _$CameraModelImpl;

  factory _CameraModel.fromJson(Map<String, dynamic> json) =
      _$CameraModelImpl.fromJson;

  @override
  @JsonKey(name: 'camera_id')
  String get cameraId;
  @override
  @JsonKey(name: 'building_id')
  String get buildingId;
  @override
  @JsonKey(name: 'camera_kind')
  String get cameraKind;
  @override
  @JsonKey(name: 'camera_name')
  String get cameraName;
  @override
  @JsonKey(name: 'map_coordx')
  int? get mapCoordx;
  @override
  @JsonKey(name: 'map_coordy')
  int? get mapCoordy;
  @override
  @JsonKey(name: 'camera_icon_viewangle')
  String? get cameraIconViewAngle;
  @override
  @JsonKey(name: 'external_url')
  String? get externalUrl;
  @override
  @JsonKey(name: 'rtsp_port')
  int get rtspPort;
  @override
  @JsonKey(name: 'stream_cif')
  String? get streamCif;
  @override
  @JsonKey(name: 'stream_d1')
  String? get streamD1;

  /// Create a copy of CameraModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraModelImplCopyWith<_$CameraModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
