import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/component/button/button.dart';

class RefreshResetBox extends ConsumerWidget {
  const RefreshResetBox({
    super.key,
    required this.onRefreshPressed,
    required this.onResetPressed,
  });

  final void Function() onRefreshPressed;
  final void Function() onResetPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 65,
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          color: ref.color.onPrimary,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      width: 1.0,
                      color: ref.color.subtext,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: Button(
                  onPressed: onRefreshPressed,
                  text: '새로고침',
                  color: ref.color.secondary,
                  type: ButtonType.flat,
                  size: ButtonSize.small,
                  textSize: 16.0,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Button(
                  onPressed: onResetPressed,
                  text: '리셋',
                  color: ref.color.subtext,
                  type: ButtonType.flat,
                  size: ButtonSize.small,
                  textSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
