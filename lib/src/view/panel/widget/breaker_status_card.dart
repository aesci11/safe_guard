import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/component/asset_icon.dart';

class BreakerStatusCard extends ConsumerWidget {
  const BreakerStatusCard({
    super.key,
    this.breaker,
    this.breakerStatus,
    this.breakerCurrentUsage,
    this.leakageBreaker,
    this.overcurrentBreaker,
    this.breakerControl,
  });

  final String? breaker;
  final String? breakerStatus;
  final String? breakerCurrentUsage;
  final String? leakageBreaker;
  final String? overcurrentBreaker;
  final String? breakerControl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: ref.color.onPrimary,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          /// 차단기 이름
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 8.0),
            child: SizedBox(
              width: 86,
              child: Column(
                children: [
                  AssetIcon(
                    'breaker',
                    color: ref.color.primary,
                    size: 42.0,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    breaker ?? '0.0',
                    style: ref.typo.headline6.copyWith(
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
                /// 차단기 상태정보 목차
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                  decoration: BoxDecoration(
                    color: ref.color.hintContainer,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '차단기 이름',
                          style: ref.typo.subtitle1.copyWith(fontWeight: ref.typo.semiBold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '상태',
                          style: ref.typo.subtitle1.copyWith(fontWeight: ref.typo.semiBold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '사용전류(A)',
                          style: ref.typo.subtitle1.copyWith(fontWeight: ref.typo.semiBold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6.0),

                /// 차단기 상태정보
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          breaker ?? '0.0',
                          style: ref.typo.subtitle1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          breakerStatus == '0' ? 'OFF' : 'ON',
                          style: ref.typo.subtitle1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          breakerCurrentUsage ?? '0.0',
                          style: ref.typo.subtitle1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '과전류',
                      style: ref.typo.subtitle1.copyWith(
                        fontWeight: ref.typo.semiBold,
                      ),
                    ),
                    AssetIcon(
                      'circle',
                      color: overcurrentBreaker == '0' ? ref.color.primary : ref.color.secondary,
                      size: 22.0,
                    ),
                    Text(
                      '누전',
                      style: ref.typo.subtitle1.copyWith(
                        fontWeight: ref.typo.semiBold,
                      ),
                    ),
                    AssetIcon(
                      'circle',
                      color: leakageBreaker == '0' ? ref.color.primary : ref.color.secondary,
                      size: 22.0,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
