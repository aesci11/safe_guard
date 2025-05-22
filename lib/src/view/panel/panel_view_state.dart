import 'package:safe_guard/src/model/panel_model.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/view/base_view_state.dart';

class PanelViewState extends BaseViewState {
  const PanelViewState({
    required this.isBusy,
    required this.panelList,
    this.panelStatus,
  });
  @override
  final bool isBusy;
  final List<SensorModel> panelList;
  final PanelModel? panelStatus;

  PanelViewState copyWith({
    bool? isBusy,
    List<SensorModel>? panelList,
    PanelModel? panelStatus,
  }) {
    return PanelViewState(
      isBusy: isBusy ?? this.isBusy,
      panelList: panelList ?? this.panelList,
      panelStatus: panelStatus ?? this.panelStatus,
    );
  }
}
