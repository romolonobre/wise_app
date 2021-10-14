import 'package:flutter/material.dart';
import 'package:wise/application/constants/contants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: blueMainColor,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.notifications_none,
          color: Colors.blue[500],
          size: 28,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.analytics_outlined,
            size: 28,
            color: Colors.blue[500],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.blue[500],
            size: 29,
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(40);
}
