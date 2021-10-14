import 'package:flutter/material.dart';

/// This widget draws the image header of $INVITEFRIENDPAGE
///

class ImageHeader extends StatelessWidget {
  const ImageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //
        // First image Value

        Image.asset(
          'assets/images/invite_avatar.png',
          height: 100,
          width: 100,
          fit: BoxFit.contain,
        ),
        const SizedBox(width: 8),

        /// Icon value

        Icon(
          Icons.arrow_forward_outlined,
          size: 30,
          color: Colors.blue[200],
        ),
        const SizedBox(width: 8),

        // Second image Value

        Image.asset(
          'assets/images/gift_box.png',
          height: 100,
          width: 100,
          fit: BoxFit.contain,
        ),

        // Giff Value

        Image.network(
          'https://c.tenor.com/lSzBPEJ-NE4AAAAi/best-friends.gif',
          height: 70,
          width: 50,
        )
      ],
    );
  }
}
