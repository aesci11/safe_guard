import 'package:flutter/material.dart';
import 'package:safe_guard/src/view/home/home_view.dart';
import 'package:safe_guard/src/view/login/login_view.dart';
import 'package:safe_guard/src/view/panel/panel_view.dart';
import 'package:safe_guard/src/view/sensor/sensor_view.dart';
import 'package:safe_guard/util/sensor_view_arguments.dart';

abstract class RoutePath {
  static const String login = 'login';
  static const String home = 'home';
  static const String sensor = 'sensor';
  static const String panel = 'panel';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late final Widget page;
    switch (settings.name) {
      case RoutePath.login:
        page = const LoginView();
        break;
      case RoutePath.home:
        page = const HomeView();
        break;
      case RoutePath.sensor:
        final SensorViewArguments arg = settings.arguments as SensorViewArguments;
        page = SensorView(
          sensorList: arg.sensorList,
          siteName: arg.name,
        );
        break;
      case RoutePath.panel:
        final SensorViewArguments arg = settings.arguments as SensorViewArguments;
        page = PanelView(
          panelList: arg.sensorList,
          siteName: arg.name,
        );
        break;
    }
    return MaterialPageRoute(
      builder: (context) => page,
    );
  }
}
