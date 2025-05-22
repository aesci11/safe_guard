import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:safe_guard/theme/dark_theme.dart';
import 'package:safe_guard/theme/foundation/app_theme.dart';
import 'package:safe_guard/theme/light_theme.dart';

part 'theme_service.g.dart';

@riverpod
class ThemeService extends _$ThemeService {
  @override
  AppTheme build() => LightTheme();

  void toggleTheme() => state.brightness == Brightness.light ? DarkTheme() : LightTheme();

  ThemeData get themeData {
    return ThemeData(
      /// Scaffold
      scaffoldBackgroundColor: state.color.surface,

      /// AppBar
      appBarTheme: AppBarTheme(
        backgroundColor: state.color.surface,
        elevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(
          color: state.color.text,
        ),
        titleTextStyle: state.typo.headline2.copyWith(
          color: state.color.text,
        ),
      ),
    );
  }
}

extension ThemeServiceExt on WidgetRef {
  ThemeService get themeService => watch(themeServiceProvider.notifier);

  AppTheme get theme => watch(themeServiceProvider);

  AppColor get color => theme.color;

  AppDeco get deco => theme.deco;

  AppTypo get typo => theme.typo;
}
