import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/model/smoke_sensor_model.dart';
import 'package:safe_guard/src/view/base_view_state.dart';

class SensorViewState extends BaseViewState {
  const SensorViewState({
    required this.isBusy,
    required this.sensorList,
    this.smokeSensorStatus,
  });
  @override
  final bool isBusy;
  final List<SensorModel> sensorList;
  final SmokeSensorModel? smokeSensorStatus;

  SensorViewState copyWith({
    bool? isBusy,
    List<SensorModel>? sensorList,
    SmokeSensorModel? smokeSensorStatus,
  }) {
    return SensorViewState(
      isBusy: isBusy ?? this.isBusy,
      sensorList: sensorList ?? this.sensorList,
      smokeSensorStatus: smokeSensorStatus ?? this.smokeSensorStatus,
    );
  }
}
