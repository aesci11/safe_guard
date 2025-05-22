import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';

class BaseDialog extends ConsumerWidget {
  const BaseDialog({
    super.key,
    this.title,
    this.content,
    this.actions,
  });

  final String? title;
  final Widget? content;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      backgroundColor: ref.color.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      titlePadding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 16.0),
      contentPadding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      actionsPadding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      title: title != null
          ? Text(
              title!,
              style: ref.typo.headline4.copyWith(fontWeight: ref.typo.semiBold),
              textAlign: TextAlign.center,
            )
          : null,
      content: content,
      actions: actions,
    );
  }
}
