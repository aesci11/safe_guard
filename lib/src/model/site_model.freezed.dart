// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SiteModel _$SiteModelFromJson(Map<String, dynamic> json) {
  return _SiteModel.fromJson(json);
}

/// @nodoc
mixin _$SiteModel {
  @JsonKey(name: 'site_name')
  String get siteName => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_domain')
  String get siteDomain => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_id')
  String get siteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'map_image')
  String get mapImage => throw _privateConstructorUsedError;

  /// Serializes this SiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiteModelCopyWith<SiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteModelCopyWith<$Res> {
  factory $SiteModelCopyWith(SiteModel value, $Res Function(SiteModel) then) =
      _$SiteModelCopyWithImpl<$Res, SiteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'site_name') String siteName,
      @JsonKey(name: 'site_domain') String siteDomain,
      @JsonKey(name: 'site_id') String siteId,
      @JsonKey(name: 'map_image') String mapImage});
}

/// @nodoc
class _$SiteModelCopyWithImpl<$Res, $Val extends SiteModel>
    implements $SiteModelCopyWith<$Res> {
  _$SiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteName = null,
    Object? siteDomain = null,
    Object? siteId = null,
    Object? mapImage = null,
  }) {
    return _then(_value.copyWith(
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      siteDomain: null == siteDomain
          ? _value.siteDomain
          : siteDomain // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String,
      mapImage: null == mapImage
          ? _value.mapImage
          : mapImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SiteModelImplCopyWith<$Res>
    implements $SiteModelCopyWith<$Res> {
  factory _$$SiteModelImplCopyWith(
          _$SiteModelImpl value, $Res Function(_$SiteModelImpl) then) =
      __$$SiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'site_name') String siteName,
      @JsonKey(name: 'site_domain') String siteDomain,
      @JsonKey(name: 'site_id') String siteId,
      @JsonKey(name: 'map_image') String mapImage});
}

/// @nodoc
class __$$SiteModelImplCopyWithImpl<$Res>
    extends _$SiteModelCopyWithImpl<$Res, _$SiteModelImpl>
    implements _$$SiteModelImplCopyWith<$Res> {
  __$$SiteModelImplCopyWithImpl(
      _$SiteModelImpl _value, $Res Function(_$SiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteName = null,
    Object? siteDomain = null,
    Object? siteId = null,
    Object? mapImage = null,
  }) {
    return _then(_$SiteModelImpl(
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      siteDomain: null == siteDomain
          ? _value.siteDomain
          : siteDomain // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String,
      mapImage: null == mapImage
          ? _value.mapImage
          : mapImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiteModelImpl implements _SiteModel {
  _$SiteModelImpl(
      {@JsonKey(name: 'site_name') required this.siteName,
      @JsonKey(name: 'site_domain') required this.siteDomain,
      @JsonKey(name: 'site_id') required this.siteId,
      @JsonKey(name: 'map_image') required this.mapImage});

  factory _$SiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteModelImplFromJson(json);

  @override
  @JsonKey(name: 'site_name')
  final String siteName;
  @override
  @JsonKey(name: 'site_domain')
  final String siteDomain;
  @override
  @JsonKey(name: 'site_id')
  final String siteId;
  @override
  @JsonKey(name: 'map_image')
  final String mapImage;

  @override
  String toString() {
    return 'SiteModel(siteName: $siteName, siteDomain: $siteDomain, siteId: $siteId, mapImage: $mapImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteModelImpl &&
            (identical(other.siteName, siteName) ||
                other.siteName == siteName) &&
            (identical(other.siteDomain, siteDomain) ||
                other.siteDomain == siteDomain) &&
            (identical(other.siteId, siteId) || other.siteId == siteId) &&
            (identical(other.mapImage, mapImage) ||
                other.mapImage == mapImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, siteName, siteDomain, siteId, mapImage);

  /// Create a copy of SiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteModelImplCopyWith<_$SiteModelImpl> get copyWith =>
      __$$SiteModelImplCopyWithImpl<_$SiteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteModelImplToJson(
      this,
    );
  }
}

abstract class _SiteModel implements SiteModel {
  factory _SiteModel(
          {@JsonKey(name: 'site_name') required final String siteName,
          @JsonKey(name: 'site_domain') required final String siteDomain,
          @JsonKey(name: 'site_id') required final String siteId,
          @JsonKey(name: 'map_image') required final String mapImage}) =
      _$SiteModelImpl;

  factory _SiteModel.fromJson(Map<String, dynamic> json) =
      _$SiteModelImpl.fromJson;

  @override
  @JsonKey(name: 'site_name')
  String get siteName;
  @override
  @JsonKey(name: 'site_domain')
  String get siteDomain;
  @override
  @JsonKey(name: 'site_id')
  String get siteId;
  @override
  @JsonKey(name: 'map_image')
  String get mapImage;

  /// Create a copy of SiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiteModelImplCopyWith<_$SiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
