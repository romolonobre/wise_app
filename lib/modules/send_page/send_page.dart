import 'package:flutter/material.dart';
import 'package:wise/modules/international_page/international_page.dart';
import 'package:wise/modules/local_convert_page/local_convert_page.dart';

import 'widgets/custom_tab_bar.dart';

class SendPage extends StatelessWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 30,
          elevation: 0.7,
          backgroundColor: Colors.white,
          bottom: CustomTaBar(),
        ),
        body: const TabBarView(
          children: [InternationalPage(), LocalConvertPage()],
        ),
      ),
    );
  }
}
