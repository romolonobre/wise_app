import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise/application/constants/contants.dart';
import 'package:wise/application/models/new_trasaction_model.dart';
import 'package:wise/modules/home_bottom_bar_page.dart/widgets/card_currency_slider.dart';

import '../home_bottom_bar_controller.dart';

// RECENT CURRENCY LIST VIEW

class RecentCurrencyListView extends GetView<HomeBottomBarController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.18,
      decoration: const BoxDecoration(color: blueMainColor),
      child: Obx(
        () {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.recentCurrencyItens.length,
            itemBuilder: (context, index) => CardCurrencySlider(
              controller.recentCurrencyItens[index],
            ),
          );
        },
      ),
    );
  }
}
