import 'package:flutter/material.dart';
import 'package:wise/application/constants/contants.dart';

class LoginTextHeaderWidget extends StatelessWidget {
  const LoginTextHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Log in',
      style: TextStyle(
        color: blueMainColor,
        fontWeight: FontWeight.w700,
        fontSize: 27,
      ),
    );
  }
}
