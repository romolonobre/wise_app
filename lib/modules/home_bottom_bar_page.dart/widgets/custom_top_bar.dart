import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wise/application/constants/contants.dart';

import 'recent_currency_list_view.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      elevation: 0,
      backgroundColor: blueMainColor,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.notifications_none,
          color: Colors.blue[500],
          size: 26,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.analytics_outlined,
            size: 26,
            color: Colors.blue[500],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.blue[500],
            size: 26,
          ),
        ),
      ],
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RecentCurrencyListView(),
          ],
        ),
      ),
    );
  }
}
