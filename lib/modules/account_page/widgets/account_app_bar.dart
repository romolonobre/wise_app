import 'package:flutter/material.dart';
import 'package:wise/modules/account_page/widgets/profile_avatar.dart';

// This Widget will draw a $SliverAppBar, we use sliverappbar
// give a nice animation when the user scroll up

class AccountAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AccountAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      elevation: 0,
      actions: [
        // ICON BUTTON VALEU

        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.help_outline,
            size: 24,
            color: Colors.blue[600],
          ),
        ),

        // ICON BUTTON VALEU

        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: Colors.blue[600],
            size: 28,
          ),
        ),
      ],
      expandedHeight: 200,
      flexibleSpace: const FlexibleSpaceBar(
        title: ProfileAvatar(),
        titlePadding: EdgeInsets.all(10),
        collapseMode: CollapseMode.pin,
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(60);

  //ize get preferredSize => new Size.fromHeight(40);
}
