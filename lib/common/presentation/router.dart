import 'package:auto_route/auto_route_annotations.dart';
import 'package:boticario/auth/presentation/pages/auth/auth_page.dart';
import 'package:boticario/auth/presentation/pages/home_page.dart';
import 'package:boticario/common/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';

@MaterialAutoRouter(routes: [
  CustomRoute(
      transitionsBuilder: fadeTransition,
      durationInMilliseconds: 400,
      page: SplashScreen,
      initial: true),
  CustomRoute(
      transitionsBuilder: fadeTransition,
      durationInMilliseconds: 400,
      page: HomePage),
  CustomRoute(
      transitionsBuilder: fadeTransition,
      durationInMilliseconds: 400,
      page: AuthPage)
])
class $Router {}

Widget fadeTransition(BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) =>
    FadeTransition(opacity: animation, child: child);
