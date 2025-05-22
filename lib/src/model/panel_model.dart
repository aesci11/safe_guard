import 'package:freezed_annotation/freezed_annotation.dart';

part 'panel_model.freezed.dart';
part 'panel_model.g.dart';

@freezed
class PanelModel with _$PanelModel {
  const factory PanelModel({
    @JsonKey(name: 'sensor_id') required String sensorId,
    @JsonKey(name: 'temperature') required double temperature,
    @JsonKey(name: 'total_power_amount') required String totalPowerAmount,
    @JsonKey(name: 'lmonth_use_amount') required String lmonthUseAmount,
    @JsonKey(name: 'cmonth_use_amount') required String cmonthUseAmount,
    @JsonKey(name: 'door_flag') required String doorFlag,
    @JsonKey(name: 'heater_ctr_flag') required String heaterCtrFlag,
    @JsonKey(name: 'smoke_detection_flag') required String smokeDetectionFlag,
    @JsonKey(name: 'ark_flag') required String arkFlag,
    @JsonKey(name: 'blackout_flag') required String blackoutFlag,
    @JsonKey(name: 'leakage_flag') required String leakageFlag,
    @JsonKey(name: 'leakage_breaker_pos') required String leakageBreakerPos,
    @JsonKey(name: 'overcurrent_flag') required String overCurrentFlag,
    @JsonKey(name: 'overcurrent_breaker_pos') required String overCurrentBreakerPos,
    @JsonKey(name: 'lowcurrent_flag') required String lowCurrentFlag,
    @JsonKey(name: 'lowcurrent_breaker_pos') required String lowCurrentBreakerPos,
    @JsonKey(name: 'r_electric_usage') required double rElectricUsage,
    @JsonKey(name: 's_electric_usage') required double sElectricUsage,
    @JsonKey(name: 't_electric_usage') required double tElectricUsage,
    @JsonKey(name: 'wiresoverload_flag') required String wiresOverloadFlag,
    @JsonKey(name: 'high_temperature_flag') required String highTemperatureFlag,
    @JsonKey(name: 'overload_line') required String overloadLine,
    @JsonKey(name: 'r_current_value') required String rCurrentValue,
    @JsonKey(name: 's_current_value') required String sCurrentValue,
    @JsonKey(name: 't_current_value') required String tCurrentValue,
    @JsonKey(name: 'rn_voltage_value') required String rnVoltageValue,
    @JsonKey(name: 'sn_voltage_value') required String snVoltageValue,
    @JsonKey(name: 'tn_voltage_value') required String tnVoltageValue,
    @JsonKey(name: 'rs_voltage_value') required String rsVoltageValue,
    @JsonKey(name: 'rt_voltage_value') required String rtVoltageValue,
    @JsonKey(name: 'st_voltage_value') required String stVoltageValue,
    @JsonKey(name: 'hl_voltage_pos') required String hlVoltagePos,
    @JsonKey(name: 'breaker') required String breaker,
    @JsonKey(name: 'breaker_status') required String breakerStatus,
    @JsonKey(name: 'breaker_current_usage') required String breakerCurrentUsage,
    @JsonKey(name: 'breaker_control_yn') required String breakerControlYn,
    @JsonKey(name: 'ctrl_status') required String ctrlStatus,
    @JsonKey(name: 'leakage_status') required String leakageStatus,
  }) = _PanelModel;

  factory PanelModel.fromJson(Map<String, dynamic> json) => _$PanelModelFromJson(json);
}
