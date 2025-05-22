import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:safe_guard/src/repository/site_repository.dart';
import 'package:safe_guard/src/view/history/history_view_state.dart';

part 'history_view_model.g.dart';

@riverpod
class HistoryViewModel extends _$HistoryViewModel {
  @override
  HistoryViewState build() {
    return const HistoryViewState(
      isBusy: false,
      alarmHistoryList: [],
      alarmSystemList: [],
    );
  }

  /// 알람 이력 불러오기
  Future<void> getAlarmHistoryList() async {
    state = state.copyWith(isBusy: true);
    final result = await Future.wait([
      ref.read(getAlarmHistoryListProvider.future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(
      isBusy: false,
      alarmHistoryList: result[0],
    );
  }

  /// 시스템 이력 불러오기
  Future<void> getSystemHistoryList() async {
    state = state.copyWith(isBusy: true);
    final result = await Future.wait([
      ref.read(getSystemHistoryListProvider.future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(
      isBusy: false,
      alarmSystemList: result[0],
    );
  }
}
