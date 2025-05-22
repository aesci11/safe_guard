import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/component/base_dialog.dart';
import 'package:safe_guard/theme/component/button/button.dart';
import 'package:safe_guard/theme/res/layout.dart';

class ExitDialog extends ConsumerWidget {
  const ExitDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseDialog(
      title: '알림',
      content: SizedBox(
        width: context.layout(450, mobile: double.maxFinite),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            '프로그램을 종료하시겠습니까?',
            style: ref.typo.subtitle2,
          ),
        ),
      ),
      actions: [
        Button(
          text: '취소',
          type: ButtonType.flat,
          onPressed: () => Navigator.of(context).pop(false),
        ),
        Button(
          text: '확인',
          type: ButtonType.flat,
          onPressed: () => Navigator.of(context).pop(true),
        ),
      ],
    );
  }
}
