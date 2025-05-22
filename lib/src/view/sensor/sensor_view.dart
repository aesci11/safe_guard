import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/view/base_view.dart';
import 'package:safe_guard/theme/component/pop_button.dart';
import 'package:safe_guard/theme/component/render_appbar.dart';
import 'package:safe_guard/src/view/sensor/sensor_view_model.dart';
import 'package:safe_guard/src/view/sensor/widget/sensor_card.dart';
import 'package:safe_guard/theme/component/toast/toast.dart';

class SensorView extends ConsumerStatefulWidget {
  const SensorView({
    super.key,
    required this.sensorList,
    required this.siteName,
  });

  final List<SensorModel> sensorList;
  final String siteName;

  @override
  ConsumerState<SensorView> createState() => _SensorViewState();
}

class _SensorViewState extends ConsumerState<SensorView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => ref.read(sensorViewModelProvider.notifier).addSensorList(widget.sensorList),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModelProvider: sensorViewModelProvider,
      builder: (ref, viewModel, state) => Scaffold(
        appBar: RenderAppbar(
          siteName: widget.siteName,
          leading: const PopButton(),
          titleSpacing: 0,
          buildingName: widget.sensorList[0].buildingName,
          onRefreshPressed: () {
            if (state.smokeSensorStatus != null) {
              viewModel.getSmokeSensorStatus(state.smokeSensorStatus!.sensorId, context);
            }
          },
          onSettingPressed: () => Toast.show('홈 화면에서 사용해 주세요.'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => SensorCard(
            sensorName: widget.sensorList[index].sensorName,
            sensorId: widget.sensorList[index].sensorId,
            isWarning: false,
            smokeSensor: state.smokeSensorStatus,
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 8.0),
          itemCount: widget.sensorList.length,
        ),
      ),
    );
  }
}
