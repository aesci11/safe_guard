import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/model/history_model.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/component/base_dialog.dart';
import 'package:safe_guard/theme/component/button/button.dart';

class AlarmDescDialog extends ConsumerStatefulWidget {
  const AlarmDescDialog({
    super.key,
    required this.alarmDesc,
    required this.onClearPressed,
  });

  /// 알람 리스트
  final List<HistoryModel> alarmDesc;

  /// 개별 알람 해제
  final void Function(String alarmId) onClearPressed;

  @override
  ConsumerState<AlarmDescDialog> createState() => _AlarmDescDialogState();
}

class _AlarmDescDialogState extends ConsumerState<AlarmDescDialog> {
  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      content: SizedBox(
        width: double.maxFinite,
        height: 300,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListView.separated(
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${widget.alarmDesc[index].buildingName} ${widget.alarmDesc[index].alarmDescription}',
                            style: ref.typo.headline6,
                          ),
                        ),
                        Button(
                          onPressed: () {
                            setState(() {
                              widget.onClearPressed(widget.alarmDesc[index].alarmId!);
                            });
                          },
                          type: ButtonType.flat,
                          text: '알람확인',
                          color: ref.color.secondary,
                        )
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(height: 10.0),
              itemCount: widget.alarmDesc.length),
        ),
      ),
    );
  }
}
