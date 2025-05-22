import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/repository/site_repository.dart';
import 'package:safe_guard/src/view/panel/panel_view_state.dart';
import 'package:safe_guard/theme/component/toast/toast.dart';

part 'panel_view_model.g.dart';

@riverpod
class PanelViewModel extends _$PanelViewModel {
  @override
  PanelViewState build() {
    return const PanelViewState(
      isBusy: false,
      panelList: [],
    );
  }

  /// 분전반 리스트 state 추가
  void addSensorList(List<SensorModel> panelList) {
    state = state.copyWith(panelList: panelList);
  }

  /// 분전반 정보 불러오기
  Future<void> getPanelStatusInfo(String sensorId) async {
    state = state.copyWith(isBusy: true);
    final result = await Future.wait([
      ref.read(getPanelStatusInfoProvider(sensorId).future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(isBusy: false, panelStatus: result[0]);
  }

  /// 분전반 리셋
  Future<void> panelReset(String sensorId) async {
    state = state.copyWith(isBusy: true);
    final result = await Future.wait([
      ref.read(panelResetProvider(sensorId).future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(isBusy: false);
    result[0]['result'] == true ? Toast.show('리셋 성공') : Toast.show('리셋 실패');
  }
}
