import 'package:safe_guard/src/model/history_model.dart';
import 'package:safe_guard/src/model/system_model.dart';
import 'package:safe_guard/src/view/base_view_state.dart';

class HistoryViewState extends BaseViewState {
  const HistoryViewState({
    required this.isBusy,
    required this.alarmHistoryList,
    required this.alarmSystemList,
  });
  @override
  final bool isBusy;
  final List<HistoryModel> alarmHistoryList;
  final List<SystemModel> alarmSystemList;

  HistoryViewState copyWith({
    bool? isBusy,
    List<HistoryModel>? alarmHistoryList,
    List<SystemModel>? alarmSystemList,
  }) {
    return HistoryViewState(
      isBusy: isBusy ?? this.isBusy,
      alarmHistoryList: alarmHistoryList ?? this.alarmHistoryList,
      alarmSystemList: alarmSystemList ?? this.alarmSystemList,
    );
  }
}
