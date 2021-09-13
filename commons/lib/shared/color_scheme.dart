import 'dart:ui';

import 'package:flutter/material.dart';

class AppColorScheme {
  static Color get primaryColor => Color(0xFFE09488);
  static Color get secondaryColor => Color(0xFF3884C6);
  static Color get whiteColor => Color(0xFFFFFFFF);

  static ThemeData get themeLight => ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    accentColor: secondaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      titleTextStyle: TextStyle(
        color: whiteColor,
        fontSize: 14
      )
    ),
    backgroundColor: whiteColor,
    bottomAppBarColor: primaryColor,
  );
}
