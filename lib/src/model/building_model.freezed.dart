// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'building_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BuildingModel _$BuildingModelFromJson(Map<String, dynamic> json) {
  return _BuildingModel.fromJson(json);
}

/// @nodoc
mixin _$BuildingModel {
  @JsonKey(name: 'building_id')
  String get buildingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_name')
  String get buildingName => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_status')
  String? get buildingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_inner_image')
  String get buildingInnerImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_emergency_image')
  String get buildingEmergencyImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_select_image')
  String get buildingSelectImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_security_image')
  String get buildingSecurityImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_default_image')
  String get buildingDefaultImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_id')
  String get siteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'map_coordx')
  int get mapCoordx => throw _privateConstructorUsedError;
  @JsonKey(name: 'map_coordy')
  int get mapCoordy => throw _privateConstructorUsedError;

  /// Serializes this BuildingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BuildingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuildingModelCopyWith<BuildingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingModelCopyWith<$Res> {
  factory $BuildingModelCopyWith(
          BuildingModel value, $Res Function(BuildingModel) then) =
      _$BuildingModelCopyWithImpl<$Res, BuildingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'building_id') String buildingId,
      @JsonKey(name: 'building_name') String buildingName,
      @JsonKey(name: 'building_status') String? buildingStatus,
      @JsonKey(name: 'building_inner_image') String buildingInnerImage,
      @JsonKey(name: 'building_emergency_image') String buildingEmergencyImage,
      @JsonKey(name: 'building_select_image') String buildingSelectImage,
      @JsonKey(name: 'building_security_image') String buildingSecurityImage,
      @JsonKey(name: 'building_default_image') String buildingDefaultImage,
      @JsonKey(name: 'site_id') String siteId,
      @JsonKey(name: 'map_coordx') int mapCoordx,
      @JsonKey(name: 'map_coordy') int mapCoordy});
}

/// @nodoc
class _$BuildingModelCopyWithImpl<$Res, $Val extends BuildingModel>
    implements $BuildingModelCopyWith<$Res> {
  _$BuildingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuildingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingId = null,
    Object? buildingName = null,
    Object? buildingStatus = freezed,
    Object? buildingInnerImage = null,
    Object? buildingEmergencyImage = null,
    Object? buildingSelectImage = null,
    Object? buildingSecurityImage = null,
    Object? buildingDefaultImage = null,
    Object? siteId = null,
    Object? mapCoordx = null,
    Object? mapCoordy = null,
  }) {
    return _then(_value.copyWith(
      buildingId: null == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      buildingStatus: freezed == buildingStatus
          ? _value.buildingStatus
          : buildingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingInnerImage: null == buildingInnerImage
          ? _value.buildingInnerImage
          : buildingInnerImage // ignore: cast_nullable_to_non_nullable
              as String,
      buildingEmergencyImage: null == buildingEmergencyImage
          ? _value.buildingEmergencyImage
          : buildingEmergencyImage // ignore: cast_nullable_to_non_nullable
              as String,
      buildingSelectImage: null == buildingSelectImage
          ? _value.buildingSelectImage
          : buildingSelectImage // ignore: cast_nullable_to_non_nullable
              as String,
      buildingSecurityImage: null == buildingSecurityImage
          ? _value.buildingSecurityImage
          : buildingSecurityImage // ignore: cast_nullable_to_non_nullable
              as String,
      buildingDefaultImage: null == buildingDefaultImage
          ? _value.buildingDefaultImage
          : buildingDefaultImage // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String,
      mapCoordx: null == mapCoordx
          ? _value.mapCoordx
          : mapCoordx // ignore: cast_nullable_to_non_nullable
              as int,
      mapCoordy: null == mapCoordy
          ? _value.mapCoordy
          : mapCoordy // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuildingModelImplCopyWith<$Res>
    implements $BuildingModelCopyWith<$Res> {
  factory _$$BuildingModelImplCopyWith(
          _$BuildingModelImpl value, $Res Function(_$BuildingModelImpl) then) =
      __$$BuildingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'building_id') String buildingId,
      @JsonKey(name: 'building_name') String buildingName,
      @JsonKey(name: 'building_status') String? buildingStatus,
      @JsonKey(name: 'building_inner_image') String buildingInnerImage,
      @JsonKey(name: 'building_emergency_image') String buildingEmergencyImage,
      @JsonKey(name: 'building_select_image') String buildingSelectImage,
      @JsonKey(name: 'building_security_image') String buildingSecurityImage,
      @JsonKey(name: 'building_default_image') String buildingDefaultImage,
      @JsonKey(name: 'site_id') String siteId,
      @JsonKey(name: 'map_coordx') int mapCoordx,
      @JsonKey(name: 'map_coordy') int mapCoordy});
}

/// @nodoc
class __$$BuildingModelImplCopyWithImpl<$Res>
    extends _$BuildingModelCopyWithImpl<$Res, _$BuildingModelImpl>
    implements _$$BuildingModelImplCopyWith<$Res> {
  __$$BuildingModelImplCopyWithImpl(
      _$BuildingModelImpl _value, $Res Function(_$BuildingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuildingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingId = null,
    Object? buildingName = null,
    Object? buildingStatus = freezed,
    Object? buildingInnerImage = null,
    Object? buildingEmergencyImage = null,
    Object? buildingSelectImage = null,
    Object? buildingSecurityImage = null,
    Object? buildingDefaultImage = null,
    Object? siteId = null,
    Object? mapCoordx = null,
    Object? mapCoordy = null,
  }) {
    return _then(_$BuildingModelImpl(
      buildingId: null == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      buildingStatus: freezed == buildingStatus
          ? _value.buildingStatus
          : buildingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingInnerImage: null == buildingInnerImage
          ? _value.buildingInnerImage
          : buildingInnerImage // ignore: cast_nullable_to_non_nullable
              as String,
      buildingEmergencyImage: null == buildingEmergencyImage
          ? _value.buildingEmergencyImage
          : buildingEmergencyImage // ignore: cast_nullable_to_non_nullable
              as String,
      buildingSelectImage: null == buildingSelectImage
          ? _value.buildingSelectImage
          : buildingSelectImage // ignore: cast_nullable_to_non_nullable
              as String,
      buildingSecurityImage: null == buildingSecurityImage
          ? _value.buildingSecurityImage
          : buildingSecurityImage // ignore: cast_nullable_to_non_nullable
              as String,
      buildingDefaultImage: null == buildingDefaultImage
          ? _value.buildingDefaultImage
          : buildingDefaultImage // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String,
      mapCoordx: null == mapCoordx
          ? _value.mapCoordx
          : mapCoordx // ignore: cast_nullable_to_non_nullable
              as int,
      mapCoordy: null == mapCoordy
          ? _value.mapCoordy
          : mapCoordy // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuildingModelImpl implements _BuildingModel {
  _$BuildingModelImpl(
      {@JsonKey(name: 'building_id') required this.buildingId,
      @JsonKey(name: 'building_name') required this.buildingName,
      @JsonKey(name: 'building_status') this.buildingStatus,
      @JsonKey(name: 'building_inner_image') required this.buildingInnerImage,
      @JsonKey(name: 'building_emergency_image')
      required this.buildingEmergencyImage,
      @JsonKey(name: 'building_select_image') required this.buildingSelectImage,
      @JsonKey(name: 'building_security_image')
      required this.buildingSecurityImage,
      @JsonKey(name: 'building_default_image')
      required this.buildingDefaultImage,
      @JsonKey(name: 'site_id') required this.siteId,
      @JsonKey(name: 'map_coordx') required this.mapCoordx,
      @JsonKey(name: 'map_coordy') required this.mapCoordy});

  factory _$BuildingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuildingModelImplFromJson(json);

  @override
  @JsonKey(name: 'building_id')
  final String buildingId;
  @override
  @JsonKey(name: 'building_name')
  final String buildingName;
  @override
  @JsonKey(name: 'building_status')
  final String? buildingStatus;
  @override
  @JsonKey(name: 'building_inner_image')
  final String buildingInnerImage;
  @override
  @JsonKey(name: 'building_emergency_image')
  final String buildingEmergencyImage;
  @override
  @JsonKey(name: 'building_select_image')
  final String buildingSelectImage;
  @override
  @JsonKey(name: 'building_security_image')
  final String buildingSecurityImage;
  @override
  @JsonKey(name: 'building_default_image')
  final String buildingDefaultImage;
  @override
  @JsonKey(name: 'site_id')
  final String siteId;
  @override
  @JsonKey(name: 'map_coordx')
  final int mapCoordx;
  @override
  @JsonKey(name: 'map_coordy')
  final int mapCoordy;

  @override
  String toString() {
    return 'BuildingModel(buildingId: $buildingId, buildingName: $buildingName, buildingStatus: $buildingStatus, buildingInnerImage: $buildingInnerImage, buildingEmergencyImage: $buildingEmergencyImage, buildingSelectImage: $buildingSelectImage, buildingSecurityImage: $buildingSecurityImage, buildingDefaultImage: $buildingDefaultImage, siteId: $siteId, mapCoordx: $mapCoordx, mapCoordy: $mapCoordy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildingModelImpl &&
            (identical(other.buildingId, buildingId) ||
                other.buildingId == buildingId) &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            (identical(other.buildingStatus, buildingStatus) ||
                other.buildingStatus == buildingStatus) &&
            (identical(other.buildingInnerImage, buildingInnerImage) ||
                other.buildingInnerImage == buildingInnerImage) &&
            (identical(other.buildingEmergencyImage, buildingEmergencyImage) ||
                other.buildingEmergencyImage == buildingEmergencyImage) &&
            (identical(other.buildingSelectImage, buildingSelectImage) ||
                other.buildingSelectImage == buildingSelectImage) &&
            (identical(other.buildingSecurityImage, buildingSecurityImage) ||
                other.buildingSecurityImage == buildingSecurityImage) &&
            (identical(other.buildingDefaultImage, buildingDefaultImage) ||
                other.buildingDefaultImage == buildingDefaultImage) &&
            (identical(other.siteId, siteId) || other.siteId == siteId) &&
            (identical(other.mapCoordx, mapCoordx) ||
                other.mapCoordx == mapCoordx) &&
            (identical(other.mapCoordy, mapCoordy) ||
                other.mapCoordy == mapCoordy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      buildingId,
      buildingName,
      buildingStatus,
      buildingInnerImage,
      buildingEmergencyImage,
      buildingSelectImage,
      buildingSecurityImage,
      buildingDefaultImage,
      siteId,
      mapCoordx,
      mapCoordy);

  /// Create a copy of BuildingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildingModelImplCopyWith<_$BuildingModelImpl> get copyWith =>
      __$$BuildingModelImplCopyWithImpl<_$BuildingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuildingModelImplToJson(
      this,
    );
  }
}

abstract class _BuildingModel implements BuildingModel {
  factory _BuildingModel(
          {@JsonKey(name: 'building_id') required final String buildingId,
          @JsonKey(name: 'building_name') required final String buildingName,
          @JsonKey(name: 'building_status') final String? buildingStatus,
          @JsonKey(name: 'building_inner_image')
          required final String buildingInnerImage,
          @JsonKey(name: 'building_emergency_image')
          required final String buildingEmergencyImage,
          @JsonKey(name: 'building_select_image')
          required final String buildingSelectImage,
          @JsonKey(name: 'building_security_image')
          required final String buildingSecurityImage,
          @JsonKey(name: 'building_default_image')
          required final String buildingDefaultImage,
          @JsonKey(name: 'site_id') required final String siteId,
          @JsonKey(name: 'map_coordx') required final int mapCoordx,
          @JsonKey(name: 'map_coordy') required final int mapCoordy}) =
      _$BuildingModelImpl;

  factory _BuildingModel.fromJson(Map<String, dynamic> json) =
      _$BuildingModelImpl.fromJson;

  @override
  @JsonKey(name: 'building_id')
  String get buildingId;
  @override
  @JsonKey(name: 'building_name')
  String get buildingName;
  @override
  @JsonKey(name: 'building_status')
  String? get buildingStatus;
  @override
  @JsonKey(name: 'building_inner_image')
  String get buildingInnerImage;
  @override
  @JsonKey(name: 'building_emergency_image')
  String get buildingEmergencyImage;
  @override
  @JsonKey(name: 'building_select_image')
  String get buildingSelectImage;
  @override
  @JsonKey(name: 'building_security_image')
  String get buildingSecurityImage;
  @override
  @JsonKey(name: 'building_default_image')
  String get buildingDefaultImage;
  @override
  @JsonKey(name: 'site_id')
  String get siteId;
  @override
  @JsonKey(name: 'map_coordx')
  int get mapCoordx;
  @override
  @JsonKey(name: 'map_coordy')
  int get mapCoordy;

  /// Create a copy of BuildingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuildingModelImplCopyWith<_$BuildingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
