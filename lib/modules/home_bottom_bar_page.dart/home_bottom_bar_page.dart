import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise/application/constants/contants.dart';
import 'package:wise/application/models/new_trasaction_model.dart';
import 'package:wise/modules/home_bottom_bar_page.dart/home_bottom_bar_controller.dart';
import 'package:wise/modules/home_bottom_bar_page.dart/widgets/recent_currency_list_view.dart';

import 'widgets/card_currency_slider.dart';
import 'widgets/custom_top_bar.dart';
import 'widgets/new_transactions_display.dart';

// ignore: must_be_immutable
class HomeBottomBarPage extends GetView<HomeBottomBarController> {
  final homeBottomBarController = Get.put(HomeBottomBarController());
  HomeBottomBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueMainColor,
      body: CustomScrollView(
        slivers: [CustomTopBar(), NewTransactionDisplay()],
      ),
    );
  }
}
