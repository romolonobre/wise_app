import 'package:flutter/material.dart';

// CUSTOM TEXTFIELD

class CustomTexfield extends StatelessWidget {
  final String label;
  final bool obscureText;

  const CustomTexfield(
      {Key? key, required this.label, required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}
