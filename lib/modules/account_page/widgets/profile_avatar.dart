import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 35,
      child: CircleAvatar(
        radius: 34,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/profile.jpeg',
          ),
          radius: 30,
        ),
      ),
    );
  }
}