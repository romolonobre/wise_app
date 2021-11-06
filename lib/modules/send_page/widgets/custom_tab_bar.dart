import 'package:flutter/material.dart';

class CustomTaBar extends StatelessWidget with PreferredSizeWidget {
  const CustomTaBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(width: 2, color: Colors.blue),
        insets: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      ),
      labelColor: Colors.indigo,
      labelStyle: const TextStyle(fontWeight: FontWeight.w600),
      unselectedLabelColor: Colors.grey.shade700,
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      tabs: const [
        Text('International'),
        Text('Local'),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(30);
}
