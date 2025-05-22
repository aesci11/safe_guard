import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/model/panel_model.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/src/view/panel/widget/detail_info.dart';
import 'package:safe_guard/src/view/panel/widget/refresh_reset_box.dart';
import 'package:safe_guard/theme/component/button/button.dart';

class PanelStatus extends ConsumerWidget {
  const PanelStatus({
    super.key,
    this.panelStatus,
    required this.onRefreshPressed,
    required this.onResetPressed,
  });

  final PanelModel? panelStatus;
  final void Function(String sensorId) onRefreshPressed;
  final void Function(String sensorId) onResetPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size.width * 0.85;
    final screenSize = MediaQuery.of(context).size;
    final double temperWidth = size / 75 * (panelStatus?.temperature ?? 0);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// 분전반 온도
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 14.0),
                decoration: BoxDecoration(
                  color: ref.color.onPrimary,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    Text(
                      '${panelStatus?.temperature ?? 0}°C',
                      style: ref.typo.headline1.copyWith(
                        color: temperWidth >= 280 ? ref.color.secondary : ref.color.primary,
                        fontWeight: ref.typo.semiBold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      '분전반 온도',
                      style: ref.typo.subtitle1.copyWith(color: ref.color.subtext),
                    ),
                    const SizedBox(height: 10.0),

                    /// 분전반 온도 애니메이션 바
                    SizedBox(
                      width: size,
                      height: 20,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: size,
                              height: 20,
                              decoration: BoxDecoration(
                                color: ref.color.surface,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: temperWidth,
                              height: 20,
                              decoration: BoxDecoration(
                                color: temperWidth >= 280 ? ref.color.secondary : ref.color.primary,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),

              /// 총 전력량
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 14.0),
                decoration: BoxDecoration(
                  color: ref.color.onPrimary,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              width: 1.0,
                              color: ref.color.subtext,
                            ),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '총 전력량',
                          style: ref.typo.headline4.copyWith(
                            fontWeight: ref.typo.semiBold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          '${panelStatus?.totalPowerAmount ?? 0}kw',
                          style: ref.typo.headline4.copyWith(
                            fontWeight: ref.typo.semiBold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),

              /// 월 사용량
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 14.0),
                decoration: BoxDecoration(
                  color: ref.color.onPrimary,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              width: 1.0,
                              color: ref.color.subtext,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '이번달 사용량',
                              style: ref.typo.headline6,
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              panelStatus?.cmonthUseAmount ?? '0.0',
                              style: ref.typo.headline2.copyWith(
                                fontWeight: ref.typo.semiBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '지난달 사용량',
                            style: ref.typo.headline6,
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            panelStatus?.lmonthUseAmount ?? '0.0',
                            style: ref.typo.headline2.copyWith(
                              fontWeight: ref.typo.semiBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18.0),

              /// 상세 정보 표지판 & 버튼
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '상세 정보',
                      style: ref.typo.headline5.copyWith(
                        fontWeight: ref.typo.semiBold,
                      ),
                    ),
                    Button(
                      onPressed: () {},
                      type: ButtonType.flat,
                      size: ButtonSize.small,
                      text: '더 보기',
                      textDecoration: TextDecoration.underline,
                      color: ref.color.subtext,
                    ),
                  ],
                ),
              ),

              /// 상세 정보(전력량 계산 off)
              DetailInfo(
                doorFlag: panelStatus?.doorFlag ?? '0',
                heaterFlag: panelStatus?.heaterCtrFlag ?? '0',
                arkFlag: panelStatus?.arkFlag ?? '0',
                blackoutFlag: panelStatus?.blackoutFlag ?? '0',
                leakageFlag: panelStatus?.leakageFlag ?? '0',
                overcurrentFlag: panelStatus?.overCurrentFlag ?? '0',
                temperatureFlag: panelStatus?.highTemperatureFlag ?? '0',
                wiresoverloadFlag: panelStatus?.wiresOverloadFlag ?? '0',
                smokeDetectionFlag: panelStatus?.smokeDetectionFlag ?? '0',
              ),
            ],
          ),

          /// 하단 버튼
          Positioned(
            bottom: screenSize.height * 0.04,
            left: 0,
            right: 0,
            child: RefreshResetBox(
              onRefreshPressed: () => onRefreshPressed(panelStatus!.sensorId),
              onResetPressed: () => onResetPressed(panelStatus!.sensorId),
            ),
          ),
        ],
      ),
    );
  }
}
