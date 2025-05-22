import 'package:flutter/material.dart';
import 'package:safe_guard/src/model/panel_model.dart';
import 'package:safe_guard/src/view/panel/widget/breaker_status_card.dart';
import 'package:safe_guard/src/view/panel/widget/refresh_reset_box.dart';

class BreakerStatus extends StatelessWidget {
  const BreakerStatus({
    super.key,
    this.panelStatus,
    required this.onRefreshPressed,
    required this.onResetPressed,
  });

  final PanelModel? panelStatus;
  final void Function(String sensorId) onRefreshPressed;
  final void Function(String sensorId) onResetPressed;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    /// 차단기 이름
    final List<String> breaker = panelStatus!.breaker.split(',')
      ..removeWhere(
        (element) => element == '',
      );

    /// 차단기 상태(on,off)
    final List<String>? breakerStatus = panelStatus?.breakerStatus.split('');

    /// 차단기 사용전류
    final List<String> breakerCurrentUsage = panelStatus!.breakerCurrentUsage.split(',');

    /// 과전류 발생 차단기
    final List<String> overCurrentBreakerPos = panelStatus!.overCurrentBreakerPos.split('');

    /// 누전 발생 차단기
    final List<String> leakageBreakerPos = panelStatus!.leakageBreakerPos.split('');

    /// 제어 가능 차단기
    final List<String> ctrlStatus = panelStatus!.ctrlStatus.split('');
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
      child: Stack(
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.white.withValues(alpha: 0.15),
                ],
                stops: const [0.36, 1],
              ).createShader(bounds);
            },
            child: ListView.separated(
              itemBuilder: (context, index) => index == breaker.length
                  ? const SizedBox(height: 130.0)
                  : BreakerStatusCard(
                      breaker: breaker[index],
                      breakerStatus: breakerStatus?[index],
                      breakerCurrentUsage: breakerCurrentUsage[index],
                      leakageBreaker: leakageBreakerPos[index],
                      overcurrentBreaker: overCurrentBreakerPos[index],
                      breakerControl: ctrlStatus[index],
                    ),
              separatorBuilder: (context, index) => const SizedBox(height: 10.0),
              itemCount: breaker.length + 1,
            ),
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
