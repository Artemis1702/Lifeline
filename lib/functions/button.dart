import 'package:flutter/material.dart';
import 'package:dbms_package/constants.dart';

class Button extends StatelessWidget {
  const Button({required this.next, required this.text});

  final String next;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        fixedSize: Size(350, 50),
        primary: buttonColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      onPressed: () {
        Navigator.pushNamed(context, next);
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
