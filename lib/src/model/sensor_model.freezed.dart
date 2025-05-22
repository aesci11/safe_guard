// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SensorModel _$SensorModelFromJson(Map<String, dynamic> json) {
  return _SensorModel.fromJson(json);
}

/// @nodoc
mixin _$SensorModel {
  @JsonKey(name: 'sensor_id')
  String get sensorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_id')
  String get buildingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_name')
  String get buildingName => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_id')
  String get siteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sensor_kind')
  String get sensorKind => throw _privateConstructorUsedError;
  @JsonKey(name: 'sensor_name')
  String get sensorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'map_coordx')
  String get mapCoordx => throw _privateConstructorUsedError;
  @JsonKey(name: 'map_coordy')
  String get mapCoordy => throw _privateConstructorUsedError;
  @JsonKey(name: 'sensor_status')
  String? get sensorStatus => throw _privateConstructorUsedError;

  /// Serializes this SensorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SensorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SensorModelCopyWith<SensorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorModelCopyWith<$Res> {
  factory $SensorModelCopyWith(
          SensorModel value, $Res Function(SensorModel) then) =
      _$SensorModelCopyWithImpl<$Res, SensorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sensor_id') String sensorId,
      @JsonKey(name: 'building_id') String buildingId,
      @JsonKey(name: 'building_name') String buildingName,
      @JsonKey(name: 'site_id') String siteId,
      @JsonKey(name: 'sensor_kind') String sensorKind,
      @JsonKey(name: 'sensor_name') String sensorName,
      @JsonKey(name: 'map_coordx') String mapCoordx,
      @JsonKey(name: 'map_coordy') String mapCoordy,
      @JsonKey(name: 'sensor_status') String? sensorStatus});
}

/// @nodoc
class _$SensorModelCopyWithImpl<$Res, $Val extends SensorModel>
    implements $SensorModelCopyWith<$Res> {
  _$SensorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SensorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensorId = null,
    Object? buildingId = null,
    Object? buildingName = null,
    Object? siteId = null,
    Object? sensorKind = null,
    Object? sensorName = null,
    Object? mapCoordx = null,
    Object? mapCoordy = null,
    Object? sensorStatus = freezed,
  }) {
    return _then(_value.copyWith(
      sensorId: null == sensorId
          ? _value.sensorId
          : sensorId // ignore: cast_nullable_to_non_nullable
              as String,
      buildingId: null == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String,
      sensorKind: null == sensorKind
          ? _value.sensorKind
          : sensorKind // ignore: cast_nullable_to_non_nullable
              as String,
      sensorName: null == sensorName
          ? _value.sensorName
          : sensorName // ignore: cast_nullable_to_non_nullable
              as String,
      mapCoordx: null == mapCoordx
          ? _value.mapCoordx
          : mapCoordx // ignore: cast_nullable_to_non_nullable
              as String,
      mapCoordy: null == mapCoordy
          ? _value.mapCoordy
          : mapCoordy // ignore: cast_nullable_to_non_nullable
              as String,
      sensorStatus: freezed == sensorStatus
          ? _value.sensorStatus
          : sensorStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SensorModelImplCopyWith<$Res>
    implements $SensorModelCopyWith<$Res> {
  factory _$$SensorModelImplCopyWith(
          _$SensorModelImpl value, $Res Function(_$SensorModelImpl) then) =
      __$$SensorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sensor_id') String sensorId,
      @JsonKey(name: 'building_id') String buildingId,
      @JsonKey(name: 'building_name') String buildingName,
      @JsonKey(name: 'site_id') String siteId,
      @JsonKey(name: 'sensor_kind') String sensorKind,
      @JsonKey(name: 'sensor_name') String sensorName,
      @JsonKey(name: 'map_coordx') String mapCoordx,
      @JsonKey(name: 'map_coordy') String mapCoordy,
      @JsonKey(name: 'sensor_status') String? sensorStatus});
}

/// @nodoc
class __$$SensorModelImplCopyWithImpl<$Res>
    extends _$SensorModelCopyWithImpl<$Res, _$SensorModelImpl>
    implements _$$SensorModelImplCopyWith<$Res> {
  __$$SensorModelImplCopyWithImpl(
      _$SensorModelImpl _value, $Res Function(_$SensorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SensorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensorId = null,
    Object? buildingId = null,
    Object? buildingName = null,
    Object? siteId = null,
    Object? sensorKind = null,
    Object? sensorName = null,
    Object? mapCoordx = null,
    Object? mapCoordy = null,
    Object? sensorStatus = freezed,
  }) {
    return _then(_$SensorModelImpl(
      sensorId: null == sensorId
          ? _value.sensorId
          : sensorId // ignore: cast_nullable_to_non_nullable
              as String,
      buildingId: null == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String,
      sensorKind: null == sensorKind
          ? _value.sensorKind
          : sensorKind // ignore: cast_nullable_to_non_nullable
              as String,
      sensorName: null == sensorName
          ? _value.sensorName
          : sensorName // ignore: cast_nullable_to_non_nullable
              as String,
      mapCoordx: null == mapCoordx
          ? _value.mapCoordx
          : mapCoordx // ignore: cast_nullable_to_non_nullable
              as String,
      mapCoordy: null == mapCoordy
          ? _value.mapCoordy
          : mapCoordy // ignore: cast_nullable_to_non_nullable
              as String,
      sensorStatus: freezed == sensorStatus
          ? _value.sensorStatus
          : sensorStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SensorModelImpl implements _SensorModel {
  const _$SensorModelImpl(
      {@JsonKey(name: 'sensor_id') required this.sensorId,
      @JsonKey(name: 'building_id') required this.buildingId,
      @JsonKey(name: 'building_name') required this.buildingName,
      @JsonKey(name: 'site_id') required this.siteId,
      @JsonKey(name: 'sensor_kind') required this.sensorKind,
      @JsonKey(name: 'sensor_name') required this.sensorName,
      @JsonKey(name: 'map_coordx') required this.mapCoordx,
      @JsonKey(name: 'map_coordy') required this.mapCoordy,
      @JsonKey(name: 'sensor_status') this.sensorStatus});

  factory _$SensorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SensorModelImplFromJson(json);

  @override
  @JsonKey(name: 'sensor_id')
  final String sensorId;
  @override
  @JsonKey(name: 'building_id')
  final String buildingId;
  @override
  @JsonKey(name: 'building_name')
  final String buildingName;
  @override
  @JsonKey(name: 'site_id')
  final String siteId;
  @override
  @JsonKey(name: 'sensor_kind')
  final String sensorKind;
  @override
  @JsonKey(name: 'sensor_name')
  final String sensorName;
  @override
  @JsonKey(name: 'map_coordx')
  final String mapCoordx;
  @override
  @JsonKey(name: 'map_coordy')
  final String mapCoordy;
  @override
  @JsonKey(name: 'sensor_status')
  final String? sensorStatus;

  @override
  String toString() {
    return 'SensorModel(sensorId: $sensorId, buildingId: $buildingId, buildingName: $buildingName, siteId: $siteId, sensorKind: $sensorKind, sensorName: $sensorName, mapCoordx: $mapCoordx, mapCoordy: $mapCoordy, sensorStatus: $sensorStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SensorModelImpl &&
            (identical(other.sensorId, sensorId) ||
                other.sensorId == sensorId) &&
            (identical(other.buildingId, buildingId) ||
                other.buildingId == buildingId) &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            (identical(other.siteId, siteId) || other.siteId == siteId) &&
            (identical(other.sensorKind, sensorKind) ||
                other.sensorKind == sensorKind) &&
            (identical(other.sensorName, sensorName) ||
                other.sensorName == sensorName) &&
            (identical(other.mapCoordx, mapCoordx) ||
                other.mapCoordx == mapCoordx) &&
            (identical(other.mapCoordy, mapCoordy) ||
                other.mapCoordy == mapCoordy) &&
            (identical(other.sensorStatus, sensorStatus) ||
                other.sensorStatus == sensorStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sensorId,
      buildingId,
      buildingName,
      siteId,
      sensorKind,
      sensorName,
      mapCoordx,
      mapCoordy,
      sensorStatus);

  /// Create a copy of SensorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SensorModelImplCopyWith<_$SensorModelImpl> get copyWith =>
      __$$SensorModelImplCopyWithImpl<_$SensorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SensorModelImplToJson(
      this,
    );
  }
}

abstract class _SensorModel implements SensorModel {
  const factory _SensorModel(
          {@JsonKey(name: 'sensor_id') required final String sensorId,
          @JsonKey(name: 'building_id') required final String buildingId,
          @JsonKey(name: 'building_name') required final String buildingName,
          @JsonKey(name: 'site_id') required final String siteId,
          @JsonKey(name: 'sensor_kind') required final String sensorKind,
          @JsonKey(name: 'sensor_name') required final String sensorName,
          @JsonKey(name: 'map_coordx') required final String mapCoordx,
          @JsonKey(name: 'map_coordy') required final String mapCoordy,
          @JsonKey(name: 'sensor_status') final String? sensorStatus}) =
      _$SensorModelImpl;

  factory _SensorModel.fromJson(Map<String, dynamic> json) =
      _$SensorModelImpl.fromJson;

  @override
  @JsonKey(name: 'sensor_id')
  String get sensorId;
  @override
  @JsonKey(name: 'building_id')
  String get buildingId;
  @override
  @JsonKey(name: 'building_name')
  String get buildingName;
  @override
  @JsonKey(name: 'site_id')
  String get siteId;
  @override
  @JsonKey(name: 'sensor_kind')
  String get sensorKind;
  @override
  @JsonKey(name: 'sensor_name')
  String get sensorName;
  @override
  @JsonKey(name: 'map_coordx')
  String get mapCoordx;
  @override
  @JsonKey(name: 'map_coordy')
  String get mapCoordy;
  @override
  @JsonKey(name: 'sensor_status')
  String? get sensorStatus;

  /// Create a copy of SensorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SensorModelImplCopyWith<_$SensorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
