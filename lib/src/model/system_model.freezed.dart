// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SystemModel _$SystemModelFromJson(Map<String, dynamic> json) {
  return _SystemModel.fromJson(json);
}

/// @nodoc
mixin _$SystemModel {
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'system_type')
  String? get systemType => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_name')
  String? get workName => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_datetime')
  String? get workDatetime => throw _privateConstructorUsedError;

  /// Serializes this SystemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemModelCopyWith<SystemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemModelCopyWith<$Res> {
  factory $SystemModelCopyWith(
          SystemModel value, $Res Function(SystemModel) then) =
      _$SystemModelCopyWithImpl<$Res, SystemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'system_type') String? systemType,
      @JsonKey(name: 'work_name') String? workName,
      @JsonKey(name: 'work_datetime') String? workDatetime});
}

/// @nodoc
class _$SystemModelCopyWithImpl<$Res, $Val extends SystemModel>
    implements $SystemModelCopyWith<$Res> {
  _$SystemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? systemType = freezed,
    Object? workName = freezed,
    Object? workDatetime = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      systemType: freezed == systemType
          ? _value.systemType
          : systemType // ignore: cast_nullable_to_non_nullable
              as String?,
      workName: freezed == workName
          ? _value.workName
          : workName // ignore: cast_nullable_to_non_nullable
              as String?,
      workDatetime: freezed == workDatetime
          ? _value.workDatetime
          : workDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SystemModelImplCopyWith<$Res>
    implements $SystemModelCopyWith<$Res> {
  factory _$$SystemModelImplCopyWith(
          _$SystemModelImpl value, $Res Function(_$SystemModelImpl) then) =
      __$$SystemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'system_type') String? systemType,
      @JsonKey(name: 'work_name') String? workName,
      @JsonKey(name: 'work_datetime') String? workDatetime});
}

/// @nodoc
class __$$SystemModelImplCopyWithImpl<$Res>
    extends _$SystemModelCopyWithImpl<$Res, _$SystemModelImpl>
    implements _$$SystemModelImplCopyWith<$Res> {
  __$$SystemModelImplCopyWithImpl(
      _$SystemModelImpl _value, $Res Function(_$SystemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? systemType = freezed,
    Object? workName = freezed,
    Object? workDatetime = freezed,
  }) {
    return _then(_$SystemModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      systemType: freezed == systemType
          ? _value.systemType
          : systemType // ignore: cast_nullable_to_non_nullable
              as String?,
      workName: freezed == workName
          ? _value.workName
          : workName // ignore: cast_nullable_to_non_nullable
              as String?,
      workDatetime: freezed == workDatetime
          ? _value.workDatetime
          : workDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemModelImpl implements _SystemModel {
  const _$SystemModelImpl(
      {@JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'system_type') this.systemType,
      @JsonKey(name: 'work_name') this.workName,
      @JsonKey(name: 'work_datetime') this.workDatetime});

  factory _$SystemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'system_type')
  final String? systemType;
  @override
  @JsonKey(name: 'work_name')
  final String? workName;
  @override
  @JsonKey(name: 'work_datetime')
  final String? workDatetime;

  @override
  String toString() {
    return 'SystemModel(userId: $userId, systemType: $systemType, workName: $workName, workDatetime: $workDatetime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.systemType, systemType) ||
                other.systemType == systemType) &&
            (identical(other.workName, workName) ||
                other.workName == workName) &&
            (identical(other.workDatetime, workDatetime) ||
                other.workDatetime == workDatetime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, systemType, workName, workDatetime);

  /// Create a copy of SystemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemModelImplCopyWith<_$SystemModelImpl> get copyWith =>
      __$$SystemModelImplCopyWithImpl<_$SystemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemModelImplToJson(
      this,
    );
  }
}

abstract class _SystemModel implements SystemModel {
  const factory _SystemModel(
          {@JsonKey(name: 'user_id') final String? userId,
          @JsonKey(name: 'system_type') final String? systemType,
          @JsonKey(name: 'work_name') final String? workName,
          @JsonKey(name: 'work_datetime') final String? workDatetime}) =
      _$SystemModelImpl;

  factory _SystemModel.fromJson(Map<String, dynamic> json) =
      _$SystemModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'system_type')
  String? get systemType;
  @override
  @JsonKey(name: 'work_name')
  String? get workName;
  @override
  @JsonKey(name: 'work_datetime')
  String? get workDatetime;

  /// Create a copy of SystemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemModelImplCopyWith<_$SystemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
