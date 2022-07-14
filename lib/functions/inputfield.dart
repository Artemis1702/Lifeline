import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField({required this.visibility, required this.label, this.press});

  final bool visibility;
  final String label;
  final Function(String)? press;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: press,
      obscureText: !visibility,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 3,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        hoverColor: Colors.grey,
        labelText: label,
      ),
    );
  }
}
