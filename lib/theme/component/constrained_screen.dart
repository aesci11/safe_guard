import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/res/layout.dart';

class ConstrainedScreen extends ConsumerWidget {
  const ConstrainedScreen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.center,
      color: ref.color.surface,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: Breakpoints.desktop,
        ),
        child: child,
      ),
    );
  }
}
