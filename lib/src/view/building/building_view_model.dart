import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/repository/site_repository.dart';
import 'package:safe_guard/src/service/push_notification_service.dart';
import 'package:safe_guard/src/view/building/building_view_state.dart';
import 'package:safe_guard/src/view/home/home_view_model.dart';
import 'package:safe_guard/theme/component/toast/toast.dart';

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

  /// 전체 알람 확인
  void alarmAllClear() {
    ref.read(pushNotificationServiceProvider.notifier).alarmClear();
  }

  /// 개별 알람 확인
  Future<void> alarmClear(String alarmId) async {
    state = state.copyWith(isBusy: true);
    final result = await Future.wait([
      ref.read(alarmClearProvider(alarmId).future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(isBusy: false);
    result[0]['result'] == '200' ? Toast.show('알람 확인 성공') : Toast.show('알람 확인 실패');
    getAlarmHistoryList();
  }

  /// 알람 발생 리스트 불러오기
  Future<void> getAlarmHistoryList() async {
    state = state.copyWith(isBusy: true);
    final result = await Future.wait([
      ref.read(getAlarmHistoryListProvider.future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(
      isBusy: false,
      occurFlag: result[0],
    );
    alarmDescList;
  }

  /// 확인해야하는 알람 리스트 추출
  void get alarmDescList {
    if (state.occurFlag == null || state.occurFlag!.isEmpty) return;
    final alarmDesc = state.occurFlag?.where((element) => element.occurFlag == '발생').toList();
    state = state.copyWith(alarmDesc: alarmDesc);
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
