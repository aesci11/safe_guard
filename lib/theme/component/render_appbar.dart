import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/component/button/button.dart';

class RenderAppbar extends ConsumerWidget implements PreferredSizeWidget {
  const RenderAppbar({
    super.key,
    this.buildingName,
    this.titleSpacing,
    this.tabBar,
    this.size,
    this.leading,
    this.siteName,
    this.onRefreshPressed,
    this.onSettingPressed,
  });

  final String? buildingName;
  final double? titleSpacing;
  final PreferredSizeWidget? tabBar;
  final double? size;
  final Widget? leading;
  final String? siteName;
  final void Function()? onRefreshPressed;
  final void Function()? onSettingPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: leading,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            siteName ?? '',
            style: ref.typo.headline2.copyWith(
              fontWeight: ref.typo.semiBold,
            ),
          ),
          if (buildingName != null) const Text(' | '),
          if (buildingName != null) Text(buildingName!, style: ref.typo.headline4),
        ],
      ),
      titleSpacing: titleSpacing,
      actions: [
        Button(
          onPressed: onRefreshPressed ?? () {},
          type: ButtonType.flat,
          icon: 'refresh',
          iconSize: 28.0,
          color: ref.color.text,
        ),
        Button(
          onPressed: onSettingPressed ?? () {},
          type: ButtonType.flat,
          icon: 'settings',
          iconSize: 28.0,
          color: ref.color.text,
        ),
      ],
      bottom: tabBar,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size ?? 56.0);
}
