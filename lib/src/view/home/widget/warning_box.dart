import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/model/history_model.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/src/view/building/widget/alarm_desc_dialog.dart';
import 'package:safe_guard/theme/component/asset_icon.dart';
import 'package:safe_guard/theme/component/button/button.dart';

class WarningBox extends ConsumerWidget {
  const WarningBox({
    super.key,
    this.alarmDesc,
    required this.onAlarmAllClearPressed,
    required this.onAlarmClearPressed,
  });

  /// 알람 리스트
  final List<HistoryModel>? alarmDesc;

  /// 전체 알람 해제(미구현)
  final void Function() onAlarmAllClearPressed;

  /// 개별 알람 해제
  final void Function(String alarmId) onAlarmClearPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Row(
        children: [
          /// 알람 메세지 표시창
          Expanded(
            child: InkWell(
              onTap: () {
                if (alarmDesc == null || alarmDesc!.isEmpty) return;
                showDialog(
                  context: context,
                  builder: (context) => AlarmDescDialog(
                    alarmDesc: alarmDesc!,
                    onClearPressed: (alarmId) => onAlarmClearPressed(alarmId),
                  ),
                );
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 14.0),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    AssetIcon(
                      'telephone',
                      color: alarmDesc == null || alarmDesc!.isEmpty ? ref.color.inactive : ref.color.secondary,
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Text(
                        (alarmDesc == null || alarmDesc!.isEmpty)
                            ? '새로운 알람이 없습니다.'
                            : '${alarmDesc?[0].buildingName} ${alarmDesc?[0].alarmDescription}',
                        textScaler: TextScaler.noScaling,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),

          /// 전체 알람 해제 버튼(미구현)
          Button(
            onPressed: () {
              if (alarmDesc == null || alarmDesc!.isEmpty) return;
              showDialog(
                context: context,
                builder: (context) => AlarmDescDialog(
                  alarmDesc: alarmDesc!,
                  onClearPressed: (alarmId) => onAlarmClearPressed(alarmId),
                ),
              );
            },
            isInactive: alarmDesc == null ? true : false,
            type: ButtonType.flat,
            size: ButtonSize.small,
            icon: alarmDesc == null ? 'bell_off' : 'bell',
            color: alarmDesc == null || alarmDesc!.isEmpty ? ref.color.inactive : ref.color.secondary,
          ),
        ],
      ),
    );
  }
}
