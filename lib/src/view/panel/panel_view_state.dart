import 'package:safe_guard/src/model/panel_model.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/view/base_view_state.dart';

class PanelViewState extends BaseViewState {
  const PanelViewState({
    required this.isBusy,
    required this.panelList,
    required this.panelIndex,
    this.panelStatus,
    this.panelName,
  });
  @override
  final bool isBusy;
  final List<SensorModel> panelList;
  final PanelModel? panelStatus;
  final String? panelName;
  final int panelIndex;

  PanelViewState copyWith({
    bool? isBusy,
    List<SensorModel>? panelList,
    PanelModel? panelStatus,
    String? panelName,
    int? panelIndex,
  }) {
    return PanelViewState(
      isBusy: isBusy ?? this.isBusy,
      panelList: panelList ?? this.panelList,
      panelStatus: panelStatus ?? this.panelStatus,
      panelName: panelName ?? this.panelName,
      panelIndex: panelIndex ?? this.panelIndex,
    );
  }
}
