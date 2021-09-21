import 'package:commons_dependencies/main.dart';
import 'package:sign_in/app/pages/welcome/welcome_page.dart';

class SignInModule extends Module {
  @override
  List<Bind> get binds => [

  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      "/",
      child: (_, args) => WelcomePage(),
    ),
  ];
}