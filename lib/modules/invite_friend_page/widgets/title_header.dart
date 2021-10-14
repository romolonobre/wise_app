import 'package:flutter/material.dart';
import 'package:wise/application/constants/contants.dart';

// Title header Widget

class TitleHeader extends StatelessWidget {
  const TitleHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Invite and earn 50 GBP',
      style: headerTextStyle,
    );
  }
}
