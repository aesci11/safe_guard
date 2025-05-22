import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/repository/site_repository.dart';
import 'package:safe_guard/src/view/sensor/sensor_view_state.dart';

part 'sensor_view_model.g.dart';

@riverpod
class SensorViewModel extends _$SensorViewModel {
  @override
  SensorViewState build() {
    return const SensorViewState(
      isBusy: false,
      sensorList: [],
    );
  }

  /// 센서 state 추가
  void addSensorList(List<SensorModel> sensorList) {
    state = state.copyWith(sensorList: sensorList);
  }

  /// 복합센서 정보 호출
  Future<void> getSmokeSensorStatus(String sensorId, context) async {
    state = state.copyWith(isBusy: true);
    final result = await Future.wait([
      ref.read(getSmokeSensorStatusProvider(sensorId).future),
      Future.delayed(const Duration(milliseconds: 400)),
    ]);
    state = state.copyWith(isBusy: false, smokeSensorStatus: result[0]);
  }
}
