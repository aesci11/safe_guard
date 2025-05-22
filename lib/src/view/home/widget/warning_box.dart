import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/component/asset_icon.dart';
import 'package:safe_guard/theme/component/button/button.dart';

class WarningBox extends ConsumerWidget {
  const WarningBox({
    super.key,
    required this.text,
    required this.isWarning,
    required this.onPressed,
  });

  final String text;
  final bool isWarning;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Row(
        children: [
          /// 알람 메세지 표시창
          Expanded(
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
                    color: isWarning ? ref.color.secondary : ref.color.inactive,
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Text(text),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10.0),

          /// 전체 알람 해제 버튼
          Button(
            onPressed: onPressed,
            isInactive: isWarning ? false : true,
            type: ButtonType.flat,
            size: ButtonSize.small,
            icon: isWarning ? 'bell' : 'bell_off',
            color: isWarning ? ref.color.secondary : ref.color.inactive,
          ),
        ],
      ),
    );
  }
}
