import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// SOCIAL MEDIA LOG IN BUTTOM
/// This widget draws a buttom that takes an images as
/// icon and also takes a function. We have 3 social
/// media buttons APPLE, FACEBOOK AND GMAIL.

class LoginWithButtom extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const LoginWithButtom({
    Key? key,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.3,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(width: 0.2),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(imagePath),
      ),
    );
  }
}
