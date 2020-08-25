// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../auth/presentation/pages/auth/auth_page.dart';
import '../../auth/presentation/pages/home_page.dart';
import '../../user/domain/entities/user.dart';
import 'pages/splash_screen.dart';
import 'router.dart';

class Routes {
  static const String splashScreen = '/';
  static const String homePage = '/home-page';
  static const String authPage = '/auth-page';
  static const all = <String>{
    splashScreen,
    homePage,
    authPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.authPage, page: AuthPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SplashScreen().wrappedRoute(context),
        settings: data,
        transitionsBuilder: fadeTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    HomePage: (data) {
      final args = data.getArgs<HomePageArguments>(
        orElse: () => HomePageArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => HomePage(
          key: args.key,
          user: args.user,
        ),
        settings: data,
        transitionsBuilder: fadeTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    AuthPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AuthPage(),
        settings: data,
        transitionsBuilder: fadeTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomePage arguments holder class
class HomePageArguments {
  final Key key;
  final User user;
  HomePageArguments({this.key, this.user});
}
