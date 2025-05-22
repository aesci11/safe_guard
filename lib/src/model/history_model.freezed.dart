// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoryModel _$HistoryModelFromJson(Map<String, dynamic> json) {
  return _HistoryModel.fromJson(json);
}

/// @nodoc
mixin _$HistoryModel {
  @JsonKey(name: 'sensor_id')
  String? get sensorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'alarm_id')
  String? get alarmId => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_name')
  String? get buildingName => throw _privateConstructorUsedError;
  @JsonKey(name: 'alarm_description')
  String? get alarmDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'alarm_collec_datetime')
  String? get alarmCollectDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'occur_flag')
  String? get occurFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'insert_datetime')
  String? get insertDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'push_send_flag')
  String? get pushSendFlag => throw _privateConstructorUsedError;

  /// Serializes this HistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryModelCopyWith<HistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryModelCopyWith<$Res> {
  factory $HistoryModelCopyWith(
          HistoryModel value, $Res Function(HistoryModel) then) =
      _$HistoryModelCopyWithImpl<$Res, HistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sensor_id') String? sensorId,
      @JsonKey(name: 'alarm_id') String? alarmId,
      @JsonKey(name: 'building_name') String? buildingName,
      @JsonKey(name: 'alarm_description') String? alarmDescription,
      @JsonKey(name: 'alarm_collec_datetime') String? alarmCollectDatetime,
      @JsonKey(name: 'occur_flag') String? occurFlag,
      @JsonKey(name: 'insert_datetime') String? insertDatetime,
      @JsonKey(name: 'push_send_flag') String? pushSendFlag});
}

/// @nodoc
class _$HistoryModelCopyWithImpl<$Res, $Val extends HistoryModel>
    implements $HistoryModelCopyWith<$Res> {
  _$HistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensorId = freezed,
    Object? alarmId = freezed,
    Object? buildingName = freezed,
    Object? alarmDescription = freezed,
    Object? alarmCollectDatetime = freezed,
    Object? occurFlag = freezed,
    Object? insertDatetime = freezed,
    Object? pushSendFlag = freezed,
  }) {
    return _then(_value.copyWith(
      sensorId: freezed == sensorId
          ? _value.sensorId
          : sensorId // ignore: cast_nullable_to_non_nullable
              as String?,
      alarmId: freezed == alarmId
          ? _value.alarmId
          : alarmId // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingName: freezed == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String?,
      alarmDescription: freezed == alarmDescription
          ? _value.alarmDescription
          : alarmDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      alarmCollectDatetime: freezed == alarmCollectDatetime
          ? _value.alarmCollectDatetime
          : alarmCollectDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      occurFlag: freezed == occurFlag
          ? _value.occurFlag
          : occurFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      insertDatetime: freezed == insertDatetime
          ? _value.insertDatetime
          : insertDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      pushSendFlag: freezed == pushSendFlag
          ? _value.pushSendFlag
          : pushSendFlag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryModelImplCopyWith<$Res>
    implements $HistoryModelCopyWith<$Res> {
  factory _$$HistoryModelImplCopyWith(
          _$HistoryModelImpl value, $Res Function(_$HistoryModelImpl) then) =
      __$$HistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sensor_id') String? sensorId,
      @JsonKey(name: 'alarm_id') String? alarmId,
      @JsonKey(name: 'building_name') String? buildingName,
      @JsonKey(name: 'alarm_description') String? alarmDescription,
      @JsonKey(name: 'alarm_collec_datetime') String? alarmCollectDatetime,
      @JsonKey(name: 'occur_flag') String? occurFlag,
      @JsonKey(name: 'insert_datetime') String? insertDatetime,
      @JsonKey(name: 'push_send_flag') String? pushSendFlag});
}

/// @nodoc
class __$$HistoryModelImplCopyWithImpl<$Res>
    extends _$HistoryModelCopyWithImpl<$Res, _$HistoryModelImpl>
    implements _$$HistoryModelImplCopyWith<$Res> {
  __$$HistoryModelImplCopyWithImpl(
      _$HistoryModelImpl _value, $Res Function(_$HistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensorId = freezed,
    Object? alarmId = freezed,
    Object? buildingName = freezed,
    Object? alarmDescription = freezed,
    Object? alarmCollectDatetime = freezed,
    Object? occurFlag = freezed,
    Object? insertDatetime = freezed,
    Object? pushSendFlag = freezed,
  }) {
    return _then(_$HistoryModelImpl(
      sensorId: freezed == sensorId
          ? _value.sensorId
          : sensorId // ignore: cast_nullable_to_non_nullable
              as String?,
      alarmId: freezed == alarmId
          ? _value.alarmId
          : alarmId // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingName: freezed == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String?,
      alarmDescription: freezed == alarmDescription
          ? _value.alarmDescription
          : alarmDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      alarmCollectDatetime: freezed == alarmCollectDatetime
          ? _value.alarmCollectDatetime
          : alarmCollectDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      occurFlag: freezed == occurFlag
          ? _value.occurFlag
          : occurFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      insertDatetime: freezed == insertDatetime
          ? _value.insertDatetime
          : insertDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      pushSendFlag: freezed == pushSendFlag
          ? _value.pushSendFlag
          : pushSendFlag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryModelImpl implements _HistoryModel {
  const _$HistoryModelImpl(
      {@JsonKey(name: 'sensor_id') this.sensorId,
      @JsonKey(name: 'alarm_id') this.alarmId,
      @JsonKey(name: 'building_name') this.buildingName,
      @JsonKey(name: 'alarm_description') this.alarmDescription,
      @JsonKey(name: 'alarm_collec_datetime') this.alarmCollectDatetime,
      @JsonKey(name: 'occur_flag') this.occurFlag,
      @JsonKey(name: 'insert_datetime') this.insertDatetime,
      @JsonKey(name: 'push_send_flag') this.pushSendFlag});

  factory _$HistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'sensor_id')
  final String? sensorId;
  @override
  @JsonKey(name: 'alarm_id')
  final String? alarmId;
  @override
  @JsonKey(name: 'building_name')
  final String? buildingName;
  @override
  @JsonKey(name: 'alarm_description')
  final String? alarmDescription;
  @override
  @JsonKey(name: 'alarm_collec_datetime')
  final String? alarmCollectDatetime;
  @override
  @JsonKey(name: 'occur_flag')
  final String? occurFlag;
  @override
  @JsonKey(name: 'insert_datetime')
  final String? insertDatetime;
  @override
  @JsonKey(name: 'push_send_flag')
  final String? pushSendFlag;

  @override
  String toString() {
    return 'HistoryModel(sensorId: $sensorId, alarmId: $alarmId, buildingName: $buildingName, alarmDescription: $alarmDescription, alarmCollectDatetime: $alarmCollectDatetime, occurFlag: $occurFlag, insertDatetime: $insertDatetime, pushSendFlag: $pushSendFlag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryModelImpl &&
            (identical(other.sensorId, sensorId) ||
                other.sensorId == sensorId) &&
            (identical(other.alarmId, alarmId) || other.alarmId == alarmId) &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            (identical(other.alarmDescription, alarmDescription) ||
                other.alarmDescription == alarmDescription) &&
            (identical(other.alarmCollectDatetime, alarmCollectDatetime) ||
                other.alarmCollectDatetime == alarmCollectDatetime) &&
            (identical(other.occurFlag, occurFlag) ||
                other.occurFlag == occurFlag) &&
            (identical(other.insertDatetime, insertDatetime) ||
                other.insertDatetime == insertDatetime) &&
            (identical(other.pushSendFlag, pushSendFlag) ||
                other.pushSendFlag == pushSendFlag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sensorId,
      alarmId,
      buildingName,
      alarmDescription,
      alarmCollectDatetime,
      occurFlag,
      insertDatetime,
      pushSendFlag);

  /// Create a copy of HistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryModelImplCopyWith<_$HistoryModelImpl> get copyWith =>
      __$$HistoryModelImplCopyWithImpl<_$HistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryModelImplToJson(
      this,
    );
  }
}

abstract class _HistoryModel implements HistoryModel {
  const factory _HistoryModel(
          {@JsonKey(name: 'sensor_id') final String? sensorId,
          @JsonKey(name: 'alarm_id') final String? alarmId,
          @JsonKey(name: 'building_name') final String? buildingName,
          @JsonKey(name: 'alarm_description') final String? alarmDescription,
          @JsonKey(name: 'alarm_collec_datetime')
          final String? alarmCollectDatetime,
          @JsonKey(name: 'occur_flag') final String? occurFlag,
          @JsonKey(name: 'insert_datetime') final String? insertDatetime,
          @JsonKey(name: 'push_send_flag') final String? pushSendFlag}) =
      _$HistoryModelImpl;

  factory _HistoryModel.fromJson(Map<String, dynamic> json) =
      _$HistoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'sensor_id')
  String? get sensorId;
  @override
  @JsonKey(name: 'alarm_id')
  String? get alarmId;
  @override
  @JsonKey(name: 'building_name')
  String? get buildingName;
  @override
  @JsonKey(name: 'alarm_description')
  String? get alarmDescription;
  @override
  @JsonKey(name: 'alarm_collec_datetime')
  String? get alarmCollectDatetime;
  @override
  @JsonKey(name: 'occur_flag')
  String? get occurFlag;
  @override
  @JsonKey(name: 'insert_datetime')
  String? get insertDatetime;
  @override
  @JsonKey(name: 'push_send_flag')
  String? get pushSendFlag;

  /// Create a copy of HistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryModelImplCopyWith<_$HistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
