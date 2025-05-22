import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/model/system_model.dart';
import 'package:safe_guard/src/service/theme_service.dart';

class SystemListCard extends ConsumerWidget {
  const SystemListCard({
    super.key,
    required this.system,
  });

  final SystemModel system;

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
            system.userId ?? '',
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
            system.systemType ?? '',
            style: ref.typo.subtitle2,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(width: 1.0, color: ref.color.onHintContainer),
            ),
          ),
          width: 200.0,
          alignment: Alignment.center,
          child: Text(
            system.workName ?? '',
            style: ref.typo.subtitle2,
          ),
        ),
        Container(
          width: 100.0,
          alignment: Alignment.center,
          child: Text(
            system.workDatetime ?? '',
            textAlign: TextAlign.center,
            style: ref.typo.subtitle2,
          ),
        ),
      ],
    );
  }
}
