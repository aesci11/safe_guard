import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/component/asset_icon.dart';

class DetailInfo extends ConsumerWidget {
  const DetailInfo({
    super.key,
    required this.doorFlag,
    required this.heaterFlag,
    required this.arkFlag,
    required this.blackoutFlag,
    required this.leakageFlag,
    required this.overcurrentFlag,
    required this.temperatureFlag,
    required this.wiresoverloadFlag,
    required this.smokeDetectionFlag,
  });

  final String doorFlag;
  final String heaterFlag;
  final String arkFlag;
  final String blackoutFlag;
  final String leakageFlag;
  final String overcurrentFlag;
  final String temperatureFlag;
  final String wiresoverloadFlag;
  final String smokeDetectionFlag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: ref.color.onPrimary,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    AssetIcon(
                      'circle',
                      color: wiresoverloadFlag == '0' ? ref.color.primary : ref.color.secondary,
                      size: 18.0,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '전선 과부하',
                      style: ref.typo.subtitle1,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    AssetIcon(
                      'circle',
                      color: doorFlag == '0' ? ref.color.primary : ref.color.secondary,
                      size: 18.0,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '문열림',
                      style: ref.typo.subtitle1,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    AssetIcon(
                      'circle',
                      color: heaterFlag == '0' ? ref.color.primary : ref.color.secondary,
                      size: 18.0,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '히터 동작',
                      style: ref.typo.subtitle1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 26.0),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    AssetIcon(
                      'circle',
                      color: arkFlag == '0' ? ref.color.primary : ref.color.secondary,
                      size: 18.0,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '아크 발생',
                      style: ref.typo.subtitle1,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    AssetIcon(
                      'circle',
                      color: blackoutFlag == '0' ? ref.color.primary : ref.color.secondary,
                      size: 18.0,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '정전 발생',
                      style: ref.typo.subtitle1,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    AssetIcon(
                      'circle',
                      color: leakageFlag == '0' ? ref.color.primary : ref.color.secondary,
                      size: 18.0,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '누전',
                      style: ref.typo.subtitle1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 26.0),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    AssetIcon(
                      'circle',
                      color: overcurrentFlag == '0' ? ref.color.primary : ref.color.secondary,
                      size: 18.0,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '과전류',
                      style: ref.typo.subtitle1,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    AssetIcon(
                      'circle',
                      color: smokeDetectionFlag == '0' ? ref.color.primary : ref.color.secondary,
                      size: 18.0,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '진동 감지',
                      style: ref.typo.subtitle1,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    AssetIcon(
                      'circle',
                      color: temperatureFlag == '0' ? ref.color.primary : ref.color.secondary,
                      size: 18.0,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '온도 이상',
                      style: ref.typo.subtitle1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
