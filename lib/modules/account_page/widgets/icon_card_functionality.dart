import 'package:flutter/material.dart';

class IconCardFunctionality extends StatelessWidget {
  final String label;
  final Icon icon;
  const IconCardFunctionality({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: Colors.blue,
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: icon,
            color: Colors.blue,
            iconSize: 20,
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
