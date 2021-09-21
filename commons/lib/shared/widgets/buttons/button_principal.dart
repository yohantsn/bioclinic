import 'package:commons/main.dart';
import 'package:flutter/material.dart';

class ButtonPrincipal extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonPrincipal({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 290,
      decoration: BoxDecoration(
        color: AppColorScheme.primaryColor,
        borderRadius: BorderRadius.circular(40)
      ),
      child: MaterialButton(
        child: Text(text, style: TextStyle(
          fontSize: 16,
          color: AppColorScheme.whiteColor
        ),),
        onPressed: () => onPressed.call(),
      ),
    );
  }
}
