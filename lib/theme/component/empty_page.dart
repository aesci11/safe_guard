import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';

class EmptyPage extends ConsumerWidget {
  const EmptyPage({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text(
        text,
        style: ref.typo.headline4.copyWith(
          color: ref.color.inactive,
          fontWeight: ref.typo.light,
        ),
      ),
    );
  }
}
