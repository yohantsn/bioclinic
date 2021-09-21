import 'package:commons/main.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sign_in/app/sign_in_module.dart';

class AppModule extends Module {

  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ModuleRoute(ConstRoutes.signInModule, module: SignInModule()),
  ];

}