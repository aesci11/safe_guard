import 'package:safe_guard/src/model/history_model.dart';
import 'package:safe_guard/src/model/push_message.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/view/base_view_state.dart';

class BuildingViewState extends BaseViewState {
  const BuildingViewState({
    required this.isBusy,
    required this.sensorList,
    this.occurFlag,
    this.alarmDesc,
    required this.pushMessage,
  });
  @override
  final bool isBusy;
  final List<SensorModel> sensorList;
  final List<HistoryModel>? occurFlag;
  final List<HistoryModel>? alarmDesc;
  final PushMessage pushMessage;

  BuildingViewState copyWith({
    bool? isBusy,
    List<SensorModel>? sensorList,
    List<HistoryModel>? occurFlag,
    List<HistoryModel>? alarmDesc,
    PushMessage? pushMessage,
  }) {
    return BuildingViewState(
      isBusy: isBusy ?? this.isBusy,
      sensorList: sensorList ?? this.sensorList,
      occurFlag: occurFlag ?? this.occurFlag,
      alarmDesc: alarmDesc ?? this.alarmDesc,
      pushMessage: pushMessage ?? this.pushMessage,
    );
  }
}
