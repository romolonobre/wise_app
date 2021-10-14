import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:wise/application/constants/contants.dart';
import 'package:wise/modules/home_page/home_controller.dart';

/// BOTTOM NAVIGATION BAR
/// this widget draws our CustomNavigationBar.
/// we use Obx to help us manage the state.
/// when we click on the icon  the index will change allowing
/// the user change page and the icon will change color
///

class CustomNavigationBar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          // We use onTap and currentIndex to change page when the user
          // clic on the differents icons

          onTap: controller.goToPage,
          currentIndex: controller.currentIndex,
          unselectedItemColor: blueMainColor,
          selectedItemColor: Colors.blue[300],
          showUnselectedLabels: true,
          items: const [
            ///
            ///Bottom navigation itens
            ///
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_outlined),
                label: 'Account'),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_outline),
              label: 'Recipients',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_sharp),
              label: 'Invite',
            )
          ],
        );
      },
    );
  }
}
