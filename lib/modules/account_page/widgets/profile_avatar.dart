import 'package:flutter/material.dart';

/// PROFILE AVATAR WIDGET

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 23,
      child: CircleAvatar(
        radius: 22,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/profile.jpeg',
          ),
          radius: 20,
        ),
      ),
    );
  }
}
