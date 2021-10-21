import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:wise/application/constants/contants.dart';

class ProfileNameHeader extends StatelessWidget {
  const ProfileNameHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Romolo Sony',
          style: headerTextStyle,
        ),
        DropdownButton(
          iconDisabledColor: Colors.blue[400],
          items: [
            DropdownMenuItem(
              child: Text(
                'Personal account',
                style: TextStyle(
                    color: Colors.blue[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
