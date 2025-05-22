import 'package:safe_guard/src/model/push_message.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/view/base_view_state.dart';

class BuildingViewState extends BaseViewState {
  const BuildingViewState({
    required this.isBusy,
    required this.sensorList,
    required this.pushMessage,
  });
  @override
  final bool isBusy;
  final List<SensorModel> sensorList;
  final PushMessage pushMessage;

  BuildingViewState copyWith({
    bool? isBusy,
    List<SensorModel>? sensorList,
    PushMessage? pushMessage,
  }) {
    return BuildingViewState(
      isBusy: isBusy ?? this.isBusy,
      sensorList: sensorList ?? this.sensorList,
      pushMessage: pushMessage ?? this.pushMessage,
    );
  }
}
