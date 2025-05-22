import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_model.freezed.dart';
part 'history_model.g.dart';

@freezed
class HistoryModel with _$HistoryModel {
  const factory HistoryModel({
    @JsonKey(name: 'sensor_id') String? sensorId,
    @JsonKey(name: 'alarm_id') String? alarmId,
    @JsonKey(name: 'building_name') String? buildingName,
    @JsonKey(name: 'alarm_description') String? alarmDescription,
    @JsonKey(name: 'alarm_collec_datetime') String? alarmCollectDatetime,
    @JsonKey(name: 'occur_flag') String? occurFlag,
    @JsonKey(name: 'insert_datetime') String? insertDatetime,
    @JsonKey(name: 'push_send_flag') String? pushSendFlag,
  }) = _HistoryModel;

  factory HistoryModel.fromJson(Map<String, dynamic> json) => _$HistoryModelFromJson(json);
}
