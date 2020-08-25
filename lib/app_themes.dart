import 'package:flutter/material.dart';

import 'constant.dart';

enum AppTheme { Default }

final appThemeData = {
  AppTheme.Default: ThemeData(
    indicatorColor: kPrimaryColor,
    primaryColor: kPrimaryColor,
    fontFamily: 'Montserrat',
  ),
};
