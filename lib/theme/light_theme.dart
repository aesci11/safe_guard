import 'package:flutter/material.dart';

import 'foundation/app_theme.dart';
import 'res/palette.dart';
import 'res/typo.dart';

class LightTheme implements AppTheme {
  @override
  Brightness brightness = Brightness.light;

  @override
  AppColor color = AppColor(
    surface: Palette.grey150,
    background: Palette.black.withValues(alpha: 0.55),
    text: Palette.grey900,
    subtext: Palette.grey700,
    toastContainer: Palette.black.withValues(alpha: 0.85),
    onToastContainer: Palette.grey100,
    hint: Palette.grey300,
    hintContainer: Palette.grey200,
    onHintContainer: Palette.grey500,
    inactive: Palette.grey350,
    inactiveContainer: Palette.grey250,
    onInactiveContainer: Palette.white,
    primary: Palette.green,
    primaryContainer: Palette.brightGreen,
    onPrimary: Palette.white,
    secondary: Palette.red,
    secondaryContainer: Palette.brightRed,
    onSecondary: Palette.white,
    tertiary: Palette.yellow,
    onTertiary: Palette.white,
  );

  @override
  late AppTypo typo = AppTypo(
    typo: const NotoSans(),
    fontColor: color.text,
  );

  @override
  AppDeco deco = AppDeco(
    shadow: [
      BoxShadow(
        color: Palette.black.withValues(alpha: 0.1),
        blurRadius: 35,
      ),
    ],
  );
}
