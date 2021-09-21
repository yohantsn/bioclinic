import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:commons/shared/color_scheme.dart';
import 'package:commons/shared/const_routes.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ConstRoutes.initialRoute(ConstRoutes.signInModule),
      theme: AppColorScheme.themeLight,
    ).modular();
  }
}