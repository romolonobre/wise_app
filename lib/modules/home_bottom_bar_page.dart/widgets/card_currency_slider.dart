import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:wise/application/constants/contants.dart';
import 'package:wise/application/models/recent_currency_model.dart';
import 'package:wise/modules/home_bottom_bar_page.dart/home_bottom_bar_controller.dart';

/// This Widget draws the Currency Card

class CardCurrencySlider extends GetView<HomeBottomBarController> {
  RecentCurrencyModel recentCurrencyModel;
  CardCurrencySlider(
    this.recentCurrencyModel,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 15, 0, 15),
      padding: const EdgeInsets.all(15),
      width: 125,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage(
              recentCurrencyModel.imageFlag,
            ),
          ),
          const SizedBox(height: 19),
          Text(
            recentCurrencyModel.amount,
            style: const TextStyle(
                color: blueMainColor,
                fontWeight: FontWeight.w600,
                fontSize: 15),
          ),
          const SizedBox(height: 2),
          Text(
            recentCurrencyModel.currencyType,
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w400,
                fontSize: 13),
          )
        ],
      ),
    );
  }
}
