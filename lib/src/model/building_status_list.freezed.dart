// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'building_status_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BuildingStatusList _$BuildingStatusListFromJson(Map<String, dynamic> json) {
  return _BuildingStatusList.fromJson(json);
}

/// @nodoc
mixin _$BuildingStatusList {
  @JsonKey(name: 'building_id')
  String get buildingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_status')
  String get buildingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_security')
  int get buildingSecurity => throw _privateConstructorUsedError;

  /// Serializes this BuildingStatusList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BuildingStatusList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuildingStatusListCopyWith<BuildingStatusList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingStatusListCopyWith<$Res> {
  factory $BuildingStatusListCopyWith(
          BuildingStatusList value, $Res Function(BuildingStatusList) then) =
      _$BuildingStatusListCopyWithImpl<$Res, BuildingStatusList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'building_id') String buildingId,
      @JsonKey(name: 'building_status') String buildingStatus,
      @JsonKey(name: 'building_security') int buildingSecurity});
}

/// @nodoc
class _$BuildingStatusListCopyWithImpl<$Res, $Val extends BuildingStatusList>
    implements $BuildingStatusListCopyWith<$Res> {
  _$BuildingStatusListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuildingStatusList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingId = null,
    Object? buildingStatus = null,
    Object? buildingSecurity = null,
  }) {
    return _then(_value.copyWith(
      buildingId: null == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String,
      buildingStatus: null == buildingStatus
          ? _value.buildingStatus
          : buildingStatus // ignore: cast_nullable_to_non_nullable
              as String,
      buildingSecurity: null == buildingSecurity
          ? _value.buildingSecurity
          : buildingSecurity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuildingStatusListImplCopyWith<$Res>
    implements $BuildingStatusListCopyWith<$Res> {
  factory _$$BuildingStatusListImplCopyWith(_$BuildingStatusListImpl value,
          $Res Function(_$BuildingStatusListImpl) then) =
      __$$BuildingStatusListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'building_id') String buildingId,
      @JsonKey(name: 'building_status') String buildingStatus,
      @JsonKey(name: 'building_security') int buildingSecurity});
}

/// @nodoc
class __$$BuildingStatusListImplCopyWithImpl<$Res>
    extends _$BuildingStatusListCopyWithImpl<$Res, _$BuildingStatusListImpl>
    implements _$$BuildingStatusListImplCopyWith<$Res> {
  __$$BuildingStatusListImplCopyWithImpl(_$BuildingStatusListImpl _value,
      $Res Function(_$BuildingStatusListImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuildingStatusList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingId = null,
    Object? buildingStatus = null,
    Object? buildingSecurity = null,
  }) {
    return _then(_$BuildingStatusListImpl(
      buildingId: null == buildingId
          ? _value.buildingId
          : buildingId // ignore: cast_nullable_to_non_nullable
              as String,
      buildingStatus: null == buildingStatus
          ? _value.buildingStatus
          : buildingStatus // ignore: cast_nullable_to_non_nullable
              as String,
      buildingSecurity: null == buildingSecurity
          ? _value.buildingSecurity
          : buildingSecurity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuildingStatusListImpl implements _BuildingStatusList {
  const _$BuildingStatusListImpl(
      {@JsonKey(name: 'building_id') required this.buildingId,
      @JsonKey(name: 'building_status') required this.buildingStatus,
      @JsonKey(name: 'building_security') required this.buildingSecurity});

  factory _$BuildingStatusListImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuildingStatusListImplFromJson(json);

  @override
  @JsonKey(name: 'building_id')
  final String buildingId;
  @override
  @JsonKey(name: 'building_status')
  final String buildingStatus;
  @override
  @JsonKey(name: 'building_security')
  final int buildingSecurity;

  @override
  String toString() {
    return 'BuildingStatusList(buildingId: $buildingId, buildingStatus: $buildingStatus, buildingSecurity: $buildingSecurity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildingStatusListImpl &&
            (identical(other.buildingId, buildingId) ||
                other.buildingId == buildingId) &&
            (identical(other.buildingStatus, buildingStatus) ||
                other.buildingStatus == buildingStatus) &&
            (identical(other.buildingSecurity, buildingSecurity) ||
                other.buildingSecurity == buildingSecurity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, buildingId, buildingStatus, buildingSecurity);

  /// Create a copy of BuildingStatusList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildingStatusListImplCopyWith<_$BuildingStatusListImpl> get copyWith =>
      __$$BuildingStatusListImplCopyWithImpl<_$BuildingStatusListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuildingStatusListImplToJson(
      this,
    );
  }
}

abstract class _BuildingStatusList implements BuildingStatusList {
  const factory _BuildingStatusList(
      {@JsonKey(name: 'building_id') required final String buildingId,
      @JsonKey(name: 'building_status') required final String buildingStatus,
      @JsonKey(name: 'building_security')
      required final int buildingSecurity}) = _$BuildingStatusListImpl;

  factory _BuildingStatusList.fromJson(Map<String, dynamic> json) =
      _$BuildingStatusListImpl.fromJson;

  @override
  @JsonKey(name: 'building_id')
  String get buildingId;
  @override
  @JsonKey(name: 'building_status')
  String get buildingStatus;
  @override
  @JsonKey(name: 'building_security')
  int get buildingSecurity;

  /// Create a copy of BuildingStatusList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuildingStatusListImplCopyWith<_$BuildingStatusListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
