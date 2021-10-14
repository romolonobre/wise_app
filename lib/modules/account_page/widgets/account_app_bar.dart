import 'package:flutter/material.dart';

class AccountAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AccountAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.help_outline,
            size: 24,
            color: Colors.blue[600],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: Colors.blue[600],
            size: 28,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(60);

  //ize get preferredSize => new Size.fromHeight(40);
}
