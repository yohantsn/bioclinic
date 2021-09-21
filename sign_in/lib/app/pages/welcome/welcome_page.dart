import 'package:commons/main.dart';
import 'package:commons_dependencies/main.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
              child: Lottie.asset("assets/lotties/welcomevideo.json",
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 5),
              child: ButtonPrincipal(
                onPressed: () => null,
                text: "Sign in",
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 5),
              child: ButtonSecondary(
                onPressed: () => null,
                text: "Sign in",
              ),
            )
          ],
        ),
      ),
    );
  }
}
