// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smoke_sensor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SmokeSensorModel _$SmokeSensorModelFromJson(Map<String, dynamic> json) {
  return _SmokeSensorModel.fromJson(json);
}

/// @nodoc
mixin _$SmokeSensorModel {
  @JsonKey(name: 'sensor_ID')
  String get sensorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'smoke_max_value')
  double get smokeMaxValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'temper_max_value')
  double get temperatureMaxValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity_max_value')
  double get humidityMaxValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'smoke_value')
  double get smokeValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_value')
  double get temperatureValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity_value')
  double get humidityValue => throw _privateConstructorUsedError;

  /// Serializes this SmokeSensorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SmokeSensorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SmokeSensorModelCopyWith<SmokeSensorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmokeSensorModelCopyWith<$Res> {
  factory $SmokeSensorModelCopyWith(
          SmokeSensorModel value, $Res Function(SmokeSensorModel) then) =
      _$SmokeSensorModelCopyWithImpl<$Res, SmokeSensorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sensor_ID') String sensorId,
      @JsonKey(name: 'smoke_max_value') double smokeMaxValue,
      @JsonKey(name: 'temper_max_value') double temperatureMaxValue,
      @JsonKey(name: 'humidity_max_value') double humidityMaxValue,
      @JsonKey(name: 'smoke_value') double smokeValue,
      @JsonKey(name: 'temperature_value') double temperatureValue,
      @JsonKey(name: 'humidity_value') double humidityValue});
}

/// @nodoc
class _$SmokeSensorModelCopyWithImpl<$Res, $Val extends SmokeSensorModel>
    implements $SmokeSensorModelCopyWith<$Res> {
  _$SmokeSensorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SmokeSensorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensorId = null,
    Object? smokeMaxValue = null,
    Object? temperatureMaxValue = null,
    Object? humidityMaxValue = null,
    Object? smokeValue = null,
    Object? temperatureValue = null,
    Object? humidityValue = null,
  }) {
    return _then(_value.copyWith(
      sensorId: null == sensorId
          ? _value.sensorId
          : sensorId // ignore: cast_nullable_to_non_nullable
              as String,
      smokeMaxValue: null == smokeMaxValue
          ? _value.smokeMaxValue
          : smokeMaxValue // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureMaxValue: null == temperatureMaxValue
          ? _value.temperatureMaxValue
          : temperatureMaxValue // ignore: cast_nullable_to_non_nullable
              as double,
      humidityMaxValue: null == humidityMaxValue
          ? _value.humidityMaxValue
          : humidityMaxValue // ignore: cast_nullable_to_non_nullable
              as double,
      smokeValue: null == smokeValue
          ? _value.smokeValue
          : smokeValue // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureValue: null == temperatureValue
          ? _value.temperatureValue
          : temperatureValue // ignore: cast_nullable_to_non_nullable
              as double,
      humidityValue: null == humidityValue
          ? _value.humidityValue
          : humidityValue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SmokeSensorModelImplCopyWith<$Res>
    implements $SmokeSensorModelCopyWith<$Res> {
  factory _$$SmokeSensorModelImplCopyWith(_$SmokeSensorModelImpl value,
          $Res Function(_$SmokeSensorModelImpl) then) =
      __$$SmokeSensorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sensor_ID') String sensorId,
      @JsonKey(name: 'smoke_max_value') double smokeMaxValue,
      @JsonKey(name: 'temper_max_value') double temperatureMaxValue,
      @JsonKey(name: 'humidity_max_value') double humidityMaxValue,
      @JsonKey(name: 'smoke_value') double smokeValue,
      @JsonKey(name: 'temperature_value') double temperatureValue,
      @JsonKey(name: 'humidity_value') double humidityValue});
}

/// @nodoc
class __$$SmokeSensorModelImplCopyWithImpl<$Res>
    extends _$SmokeSensorModelCopyWithImpl<$Res, _$SmokeSensorModelImpl>
    implements _$$SmokeSensorModelImplCopyWith<$Res> {
  __$$SmokeSensorModelImplCopyWithImpl(_$SmokeSensorModelImpl _value,
      $Res Function(_$SmokeSensorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SmokeSensorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensorId = null,
    Object? smokeMaxValue = null,
    Object? temperatureMaxValue = null,
    Object? humidityMaxValue = null,
    Object? smokeValue = null,
    Object? temperatureValue = null,
    Object? humidityValue = null,
  }) {
    return _then(_$SmokeSensorModelImpl(
      sensorId: null == sensorId
          ? _value.sensorId
          : sensorId // ignore: cast_nullable_to_non_nullable
              as String,
      smokeMaxValue: null == smokeMaxValue
          ? _value.smokeMaxValue
          : smokeMaxValue // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureMaxValue: null == temperatureMaxValue
          ? _value.temperatureMaxValue
          : temperatureMaxValue // ignore: cast_nullable_to_non_nullable
              as double,
      humidityMaxValue: null == humidityMaxValue
          ? _value.humidityMaxValue
          : humidityMaxValue // ignore: cast_nullable_to_non_nullable
              as double,
      smokeValue: null == smokeValue
          ? _value.smokeValue
          : smokeValue // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureValue: null == temperatureValue
          ? _value.temperatureValue
          : temperatureValue // ignore: cast_nullable_to_non_nullable
              as double,
      humidityValue: null == humidityValue
          ? _value.humidityValue
          : humidityValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmokeSensorModelImpl implements _SmokeSensorModel {
  const _$SmokeSensorModelImpl(
      {@JsonKey(name: 'sensor_ID') required this.sensorId,
      @JsonKey(name: 'smoke_max_value') required this.smokeMaxValue,
      @JsonKey(name: 'temper_max_value') required this.temperatureMaxValue,
      @JsonKey(name: 'humidity_max_value') required this.humidityMaxValue,
      @JsonKey(name: 'smoke_value') required this.smokeValue,
      @JsonKey(name: 'temperature_value') required this.temperatureValue,
      @JsonKey(name: 'humidity_value') required this.humidityValue});

  factory _$SmokeSensorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmokeSensorModelImplFromJson(json);

  @override
  @JsonKey(name: 'sensor_ID')
  final String sensorId;
  @override
  @JsonKey(name: 'smoke_max_value')
  final double smokeMaxValue;
  @override
  @JsonKey(name: 'temper_max_value')
  final double temperatureMaxValue;
  @override
  @JsonKey(name: 'humidity_max_value')
  final double humidityMaxValue;
  @override
  @JsonKey(name: 'smoke_value')
  final double smokeValue;
  @override
  @JsonKey(name: 'temperature_value')
  final double temperatureValue;
  @override
  @JsonKey(name: 'humidity_value')
  final double humidityValue;

  @override
  String toString() {
    return 'SmokeSensorModel(sensorId: $sensorId, smokeMaxValue: $smokeMaxValue, temperatureMaxValue: $temperatureMaxValue, humidityMaxValue: $humidityMaxValue, smokeValue: $smokeValue, temperatureValue: $temperatureValue, humidityValue: $humidityValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmokeSensorModelImpl &&
            (identical(other.sensorId, sensorId) ||
                other.sensorId == sensorId) &&
            (identical(other.smokeMaxValue, smokeMaxValue) ||
                other.smokeMaxValue == smokeMaxValue) &&
            (identical(other.temperatureMaxValue, temperatureMaxValue) ||
                other.temperatureMaxValue == temperatureMaxValue) &&
            (identical(other.humidityMaxValue, humidityMaxValue) ||
                other.humidityMaxValue == humidityMaxValue) &&
            (identical(other.smokeValue, smokeValue) ||
                other.smokeValue == smokeValue) &&
            (identical(other.temperatureValue, temperatureValue) ||
                other.temperatureValue == temperatureValue) &&
            (identical(other.humidityValue, humidityValue) ||
                other.humidityValue == humidityValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sensorId,
      smokeMaxValue,
      temperatureMaxValue,
      humidityMaxValue,
      smokeValue,
      temperatureValue,
      humidityValue);

  /// Create a copy of SmokeSensorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SmokeSensorModelImplCopyWith<_$SmokeSensorModelImpl> get copyWith =>
      __$$SmokeSensorModelImplCopyWithImpl<_$SmokeSensorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmokeSensorModelImplToJson(
      this,
    );
  }
}

abstract class _SmokeSensorModel implements SmokeSensorModel {
  const factory _SmokeSensorModel(
      {@JsonKey(name: 'sensor_ID') required final String sensorId,
      @JsonKey(name: 'smoke_max_value') required final double smokeMaxValue,
      @JsonKey(name: 'temper_max_value')
      required final double temperatureMaxValue,
      @JsonKey(name: 'humidity_max_value')
      required final double humidityMaxValue,
      @JsonKey(name: 'smoke_value') required final double smokeValue,
      @JsonKey(name: 'temperature_value')
      required final double temperatureValue,
      @JsonKey(name: 'humidity_value')
      required final double humidityValue}) = _$SmokeSensorModelImpl;

  factory _SmokeSensorModel.fromJson(Map<String, dynamic> json) =
      _$SmokeSensorModelImpl.fromJson;

  @override
  @JsonKey(name: 'sensor_ID')
  String get sensorId;
  @override
  @JsonKey(name: 'smoke_max_value')
  double get smokeMaxValue;
  @override
  @JsonKey(name: 'temper_max_value')
  double get temperatureMaxValue;
  @override
  @JsonKey(name: 'humidity_max_value')
  double get humidityMaxValue;
  @override
  @JsonKey(name: 'smoke_value')
  double get smokeValue;
  @override
  @JsonKey(name: 'temperature_value')
  double get temperatureValue;
  @override
  @JsonKey(name: 'humidity_value')
  double get humidityValue;

  /// Create a copy of SmokeSensorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SmokeSensorModelImplCopyWith<_$SmokeSensorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
