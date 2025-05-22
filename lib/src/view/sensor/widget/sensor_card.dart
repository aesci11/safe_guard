import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/model/smoke_sensor_model.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/src/view/sensor/sensor_view_model.dart';
import 'package:safe_guard/theme/component/asset_icon.dart';

class SensorCard extends ConsumerStatefulWidget {
  const SensorCard({
    super.key,
    required this.sensorName,
    required this.sensorId,
    required this.isWarning,
    this.smokeSensor,
  });

  final String sensorName;
  final String sensorId;
  final bool isWarning;
  final SmokeSensorModel? smokeSensor;

  @override
  ConsumerState<SensorCard> createState() => _SensorCardState();
}

class _SensorCardState extends ConsumerState<SensorCard> {
  late String senId = widget.sensorId.substring(0, 2);

  @override

  /// 복합 센서 정보 호출
  void initState() {
    super.initState();
    if (senId == '20') {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) => ref.read(sensorViewModelProvider.notifier).getSmokeSensorStatus(widget.sensorId, context),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return senId == '10'
        ? Container()
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ref.color.onToastContainer,
                    borderRadius: senId == '20'
                        ? const BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                          )
                        : BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            /// 센서 아이콘
                            senId == '20'
                                ? AssetIcon(
                                    'smoke_detector',
                                    size: 28.0,
                                    color: ref.color.subtext,
                                  )
                                : senId == '30'
                                    ? AssetIcon(
                                        'security_detector',
                                        size: 28.0,
                                        color: ref.color.subtext,
                                      )
                                    : AssetIcon(
                                        'fire_detector',
                                        size: 28.0,
                                        color: ref.color.subtext,
                                      ),
                            const SizedBox(width: 16.0),

                            /// 센서 이름
                            Text(
                              widget.sensorName,
                              style: ref.typo.headline6.copyWith(fontWeight: ref.typo.semiBold),
                            ),
                          ],
                        ),
                      ),

                      /// 작동 여부
                      if (senId == '20')
                        AssetIcon(
                          'circle',
                          color: widget.smokeSensor == null ? ref.color.secondary : ref.color.primary,
                        ),
                      if (senId != '20')
                        AssetIcon(
                          'circle',
                          color: ref.color.primary,
                        ),
                    ],
                  ),
                ),

                /// 복합 센서 정보
                if (senId == '20')
                  Container(
                    decoration: BoxDecoration(
                      color: ref.color.onToastContainer,
                      border: Border(
                        top: BorderSide(
                          color: ref.color.hint,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '온도  ${widget.smokeSensor?.temperatureValue ?? '0.0'}',
                          style: ref.typo.headline6.copyWith(
                            fontWeight: ref.typo.semiBold,
                          ),
                        ),
                        Text(
                          '습도  ${widget.smokeSensor?.humidityValue ?? '0.0'}',
                          style: ref.typo.headline6.copyWith(
                            fontWeight: ref.typo.semiBold,
                          ),
                        ),
                        Text(
                          '연기  ${widget.smokeSensor?.smokeValue ?? '0.0'}',
                          style: ref.typo.headline6.copyWith(
                            fontWeight: ref.typo.semiBold,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          );
  }
}
