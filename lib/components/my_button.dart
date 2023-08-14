import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnName;
  VoidCallback onPressed;

  MyButton({super.key, required this.btnName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: Theme.of(context).primaryColor,
        onPressed: onPressed,
        child: Text(btnName));
  }
}
