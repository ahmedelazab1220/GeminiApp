import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kSplashScreen = '/';
  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplashScreen,
      builder: (context, state) => const Scaffold(),
    ),
  ]);
}
