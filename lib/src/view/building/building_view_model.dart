import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/repository/site_repository.dart';
import 'package:safe_guard/src/service/push_notification_service.dart';
import 'package:safe_guard/src/view/building/building_view_state.dart';
import 'package:safe_guard/src/view/home/home_view_model.dart';

part 'building_view_model.g.dart';

@riverpod
class BuildingViewModel extends _$BuildingViewModel {
  @override
  BuildingViewState build() {
    return BuildingViewState(
      isBusy: false,
      sensorList: const [],
      pushMessage: ref.watch(pushNotificationServiceProvider),
    );
  }

  /// 알람 해제
  void alarmClear() {
    ref.read(pushNotificationServiceProvider.notifier).alarmClear();
  }

  /// 센서 리스트 불러오기
  Future<List<SensorModel>> getSensorList(String buildingId) async {
    state = state.copyWith(isBusy: true);
    final result = await Future.wait([
      ref.read(getSensorListProvider(buildingId).future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(isBusy: false);
    return result[0];
  }

  /// 경계 시작 & 해제
  void updateSecurityStatus(int securityCode, String buildingId) async {
    state = state.copyWith(isBusy: true);
    await Future.wait([
      ref.read(updateBuildingSecurityProvider(securityCode, buildingId).future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    ref.read(homeViewModelProvider.notifier).getBuildingAndBuildingStatusList();
    state = state.copyWith(isBusy: false);
  }
}
