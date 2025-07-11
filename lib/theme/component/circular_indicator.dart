import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';

class CircularIndicator extends ConsumerWidget {
  const CircularIndicator({
    super.key,
    required this.child,
    required this.isBusy,
  });

  final Widget child;
  final bool isBusy;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        child,

        /// 로딩 화면
        IgnorePointer(
          ignoring: !isBusy,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: isBusy ? 1 : 0,
            child: Container(
              color: ref.color.background,
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                color: ref.color.primary,
                value: isBusy ? null : 0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
