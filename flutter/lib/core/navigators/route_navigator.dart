import 'package:flutter/widgets.dart';

class RouteNavigator {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Future<dynamic>? pushNamed<Arguments>({required String routeName, Arguments? arguments}) {
    return navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
  }

  static Future<dynamic>? pushReplacementNamed<Arguments>({required String routeName, Arguments? arguments}) {
    return navigatorKey.currentState?.pushReplacementNamed(routeName, arguments: arguments);
  }

  static Future<dynamic>? pushNamedAndRemoveUntil<Arguments>({required String routeName, required bool Function(Route<dynamic>) predicate, Object? arguments}) {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  static void pop() {
    navigatorKey.currentState?.pop();
  }
}
