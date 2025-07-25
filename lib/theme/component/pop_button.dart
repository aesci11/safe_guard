import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/component/button/button.dart';

class PopButton extends ConsumerWidget {
  const PopButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Button(
      icon: 'arrow_back',
      color: ref.color.text,
      type: ButtonType.flat,
      onPressed: () => Navigator.pop(context),
    );
  }
}
