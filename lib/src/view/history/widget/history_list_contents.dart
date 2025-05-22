import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';

class HistoryListContents extends ConsumerWidget {
  const HistoryListContents({
    super.key,
    required this.contents,
    required this.index,
    required this.indexLength,
  });

  final String contents;
  final int index;
  final int indexLength;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        border: index == indexLength - 1
            ? null
            : const Border(
                right: BorderSide(width: 1.0),
              ),
      ),
      width: 100.0,
      alignment: Alignment.center,
      child: Text(
        contents,
        style: ref.typo.subtitle1.copyWith(fontWeight: ref.typo.semiBold),
      ),
    );
  }
}
