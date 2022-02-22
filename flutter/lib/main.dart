import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:CupcakerChallenge/core/di/modules.dart';
import 'package:CupcakerChallenge/core/navigators/route_navigator.dart';
import 'package:CupcakerChallenge/modules/auth/screens/home_screen.dart';
import 'package:CupcakerChallenge/routes.dart';
import 'package:CupcakerChallenge/constants/all.dart';

Future main() async {
  await dotenv.load();
  startGetItModules();

  await GetIt.I.allReady().then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starter',
      navigatorKey: RouteNavigator.navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: routes[routeSettings.name]!);
      },
      home: HomeScreen(),
    );
  }
}
