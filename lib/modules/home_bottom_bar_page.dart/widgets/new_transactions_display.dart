import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:wise/application/constants/contants.dart';
import 'package:wise/modules/home_bottom_bar_page.dart/home_bottom_bar_controller.dart';

/// This widget will draw all the new transactions diplays on the home screen
/// will be organized in a SliverList widget fallow by ListTile widget
///

class NewTransactionDisplay extends GetView<HomeBottomBarController> {
  const NewTransactionDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue.withOpacity(0.06),
                    ),

                    // leadingIcon value

                    child: Icon(
                      controller.newTransactionsItens[index].leadingIcon,
                      color: blueMainColor,
                      size: 21,
                    ),
                  ),

                  //  description value

                  title: Text(
                    controller.newTransactionsItens[index].description,
                    style: const TextStyle(
                      color: blueMainColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),

                  // subDescription value

                  subtitle: Text(
                    controller.newTransactionsItens[index].subDescription,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),

                  // amount value

                  trailing: Text(
                    controller.newTransactionsItens[index].amount,
                    style: const TextStyle(
                      color: blueMainColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              height: 0,
            )
          ],
        );
      }, childCount: controller.newTransactionsItens.length),
    );
  }
}
