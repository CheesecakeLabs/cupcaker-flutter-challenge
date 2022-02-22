import 'package:flutter/material.dart';
import 'package:CupcakerChallenge/modules/auth/screens/home_screen.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  HomeScreen.routeName: (context) => HomeScreen()
};