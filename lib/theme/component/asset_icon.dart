import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safe_guard/src/service/theme_service.dart';

class AssetIcon extends ConsumerWidget {
  const AssetIcon(
    this.icon, {
    super.key,
    this.color,
    this.size,
  });

  final String icon;
  final Color? color;
  final double? size;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SvgPicture.asset(
      'assets/icons/$icon.svg',
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(
        color ?? ref.color.inactive,
        BlendMode.srcIn,
      ),
    );
  }
}
