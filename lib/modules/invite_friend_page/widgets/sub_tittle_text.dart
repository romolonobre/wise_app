import 'package:flutter/material.dart';

/// This Widget draws a short description.
/// We used RichText Widget to allow us use
/// diferent colors in the same text

class DescipitionText extends StatelessWidget {
  const DescipitionText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        //
        // Default Style

        style: TextStyle(
          color: Colors.grey[500],
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),

        // RichText valeu

        children: [
          const TextSpan(text: 'Earn '),

          // RichText valeu with custom style

          TextSpan(
            text: '50 GBP',
            style: TextStyle(
              color: Colors.green[700],
              fontWeight: FontWeight.bold,
            ),
          ),

          // RichText valeu

          const TextSpan(
            text:
                ' for every 3 friends who transfer over 200 GBP. They\'ll get a fee-free transfer up',
          ),

          // RichText valeu with custom style

          TextSpan(
            text: ' to 500 GBP',
            style: TextStyle(
              color: Colors.green[700],
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
