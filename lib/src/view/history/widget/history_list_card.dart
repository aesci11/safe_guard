import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/model/history_model.dart';
import 'package:safe_guard/src/service/theme_service.dart';

class HistoryListCard extends ConsumerWidget {
  const HistoryListCard({
    super.key,
    required this.history,
  });

  final HistoryModel history;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(width: 1.0, color: ref.color.onHintContainer),
            ),
          ),
          width: 100.0,
          alignment: Alignment.center,
          child: Text(
            history.buildingName ?? '',
            style: ref.typo.subtitle2,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(width: 1.0, color: ref.color.onHintContainer),
            ),
          ),
          width: 100.0,
          alignment: Alignment.center,
          child: Text(
            history.alarmDescription ?? '',
            style: ref.typo.subtitle2,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(width: 1.0, color: ref.color.onHintContainer),
            ),
          ),
          width: 100.0,
          alignment: Alignment.center,
          child: Text(
            history.occurFlag ?? '',
            style: ref.typo.subtitle2,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(width: 1.0, color: ref.color.onHintContainer),
            ),
          ),
          width: 100.0,
          alignment: Alignment.center,
          child: Text(
            history.alarmCollectDatetime ?? '',
            textAlign: TextAlign.center,
            style: ref.typo.subtitle2,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(width: 1.0, color: ref.color.onHintContainer),
            ),
          ),
          width: 100.0,
          alignment: Alignment.center,
          child: Text(
            history.insertDatetime ?? '',
            textAlign: TextAlign.center,
            style: ref.typo.subtitle2,
          ),
        ),
        Container(
          width: 100.0,
          alignment: Alignment.center,
          child: Text(
            history.pushSendFlag ?? '',
            style: ref.typo.subtitle2,
          ),
        ),
      ],
    );
  }
}
