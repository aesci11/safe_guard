import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/model/building_model.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/src/view/building/building_view_model.dart';
import 'package:safe_guard/src/view/building/widget/building_exp_card.dart';
import 'package:safe_guard/theme/component/asset_icon.dart';

class BuildingCard extends ConsumerStatefulWidget {
  const BuildingCard({
    super.key,
    required this.building,
    required this.siteName,
    required this.isSecurity,
    required this.isWarning,
    this.warningBuildingId,
    required this.onSecurityPressed,
  });

  final BuildingModel building;
  final String siteName;
  final int isSecurity;
  final String isWarning;
  final String? warningBuildingId;
  final void Function(int securityCode, String buildingId) onSecurityPressed;

  @override
  ConsumerState<BuildingCard> createState() => _BuildingCardState();
}

class _BuildingCardState extends ConsumerState<BuildingCard> {
  bool isExp = false;
  List<SensorModel> sensorList = [];

  /// 기본형 카드 확장 & 센서 리스트 호출
  void toggleAndGetSensorList() async {
    setState(() {
      isExp == false ? isExp = true : isExp = false;
    });
    if (isExp == true) {
      sensorList = await ref.read(buildingViewModelProvider.notifier).getSensorList(widget.building.buildingId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => toggleAndGetSensorList(),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 14.0),
          decoration: BoxDecoration(
            color: ref.color.onInactiveContainer,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Column(
            children: [
              /// 기본형 카드
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        /// 아이콘
                        widget.isWarning == '1'
                            ? AssetIcon(
                                'building_warning',
                                color: ref.color.secondary,
                              )
                            : AssetIcon(
                                'building_default',
                                color: ref.color.primary,
                              ),
                        const SizedBox(width: 18.0),

                        /// 건물명
                        Text(
                          widget.building.buildingName,
                          style: ref.typo.subtitle1.copyWith(fontWeight: ref.typo.semiBold),
                        ),
                        const SizedBox(width: 18.0),

                        /// 경계 여부
                        if (widget.isSecurity == 1)
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ref.color.secondary,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Text(
                              '경계중',
                              style: ref.typo.body2.copyWith(color: ref.color.secondary),
                            ),
                          ),
                      ],
                    ),
                  ),

                  /// 확장형 카드 아이콘
                  isExp
                      ? AssetIcon(
                          'light_arrow_up',
                          color: ref.color.subtext,
                        )
                      : AssetIcon(
                          'light_arrow_down',
                          color: ref.color.subtext,
                        ),
                ],
              ),

              if (isExp == true)

                /// 확장형 카드
                BuildingExpCard(
                  sensorList: sensorList,
                  siteName: widget.siteName,
                  isSecurity: widget.isSecurity,
                  onSecurityPressed: (securityCode) =>
                      widget.onSecurityPressed(securityCode, widget.building.buildingId),
                )
            ],
          ),
        ),
      ),
    );
  }
}
