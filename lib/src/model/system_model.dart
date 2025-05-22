import 'package:freezed_annotation/freezed_annotation.dart';

part 'system_model.freezed.dart';
part 'system_model.g.dart';

@freezed
class SystemModel with _$SystemModel {
  const factory SystemModel({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'system_type') String? systemType,
    @JsonKey(name: 'work_name') String? workName,
    @JsonKey(name: 'work_datetime') String? workDatetime,
  }) = _SystemModel;

  factory SystemModel.fromJson(Map<String, dynamic> json) => _$SystemModelFromJson(json);
}
