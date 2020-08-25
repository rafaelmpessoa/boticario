import 'package:auto_route/auto_route.dart';
import 'package:boticario/app_themes.dart';
import 'package:boticario/common/presentation/router.gr.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boticário App',
      builder: ExtendedNavigator.builder<Router>(
        router: Router(),
      ),
      theme: appThemeData[AppTheme.Default],
    );
  }
}
