import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/component/button/button.dart';
import 'package:safe_guard/theme/component/toast/toast.dart';
import 'package:safe_guard/util/route_path.dart';
import 'package:safe_guard/util/sensor_view_arguments.dart';

class BuildingExpCard extends ConsumerWidget {
  const BuildingExpCard({
    super.key,
    required this.sensorList,
    required this.siteName,
    required this.isSecurity,
    required this.onSecurityPressed,
  });

  final List<SensorModel> sensorList;
  final String siteName;
  final int isSecurity;
  final void Function(int securityCode) onSecurityPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final disasterSensorList = sensorList
        .where(
          (element) => element.sensorId.substring(0, 2) != '10',
        )
        .toList();
    final panelList = sensorList
        .where(
          (element) => element.sensorId.substring(0, 2) == '10',
        )
        .toList();
    return Column(
      children: [
        /// 상단 경계선
        Container(
          height: 16.0,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: ref.color.hint),
            ),
          ),
        ),
        const SizedBox(height: 16.0),

        /// 버튼
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                flex: 1,
                child: FractionallySizedBox(
                  widthFactor: 0.84,
                  child: Button(
                    onPressed: () => disasterSensorList.isEmpty
                        ? Toast.show('센서 정보가 없습니다')
                        : Navigator.pushNamed(
                            context,
                            RoutePath.sensor,
                            arguments: SensorViewArguments(siteName, disasterSensorList),
                          ),
                    type: ButtonType.outline,
                    size: ButtonSize.small,
                    color: ref.color.subtext,
                    borderColor: ref.color.subtext,
                    text: '센서 정보',
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: FractionallySizedBox(
                  widthFactor: 0.88,
                  child: Button(
                    onPressed: () => panelList.isEmpty
                        ? Toast.show('분전반 정보가 없습니다.')
                        : Navigator.pushNamed(
                            context,
                            RoutePath.panel,
                            arguments: SensorViewArguments(siteName, panelList),
                          ),
                    type: ButtonType.outline,
                    size: ButtonSize.small,
                    color: ref.color.subtext,
                    borderColor: ref.color.subtext,
                    text: '분전반 정보',
                  ),
                ),
              ),
              if (isSecurity == 0)
                Flexible(
                  flex: 1,
                  child: FractionallySizedBox(
                    widthFactor: 0.84,
                    child: Button(
                      onPressed: () => onSecurityPressed(1),
                      type: ButtonType.fill,
                      size: ButtonSize.small,
                      color: ref.color.onSecondary,
                      backgroundColor: ref.color.secondary,
                      text: '경계 시작',
                    ),
                  ),
                ),
              if (isSecurity == 1)
                Flexible(
                  flex: 1,
                  child: FractionallySizedBox(
                    widthFactor: 0.85,
                    child: Button(
                      onPressed: () => onSecurityPressed(0),
                      type: ButtonType.fill,
                      size: ButtonSize.small,
                      color: ref.color.onSecondary,
                      backgroundColor: ref.color.subtext,
                      text: '경계 해제',
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
