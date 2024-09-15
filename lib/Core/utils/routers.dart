import 'package:flutter/material.dart';
import 'package:geminiapp/Features/home/presentation/view/home_screen.dart';
import 'package:geminiapp/Features/splash/presentation/view/splash_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
