import 'package:flutter/material.dart';

import 'package:wise/application/constants/contants.dart';

/// This Widget draws a custom buttom that allow us to use
/// where it needs. It must have a label, a fuction and we have
/// to set the width as big we need.

class CustomButtom extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double width;
  final Color color;
  final Color labelColor;

  const CustomButtom({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.width,
    required this.color,
    this.labelColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: width,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(width: 0.3, color: Colors.blue.shade900),
          borderRadius: BorderRadius.circular(3)),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            color: labelColor,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
