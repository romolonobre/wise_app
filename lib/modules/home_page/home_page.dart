import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise/modules/account_page/account_page.dart';
import 'package:wise/modules/home_bottom_bar_page.dart/home_bottom_bar_page.dart';
import 'package:wise/modules/home_page/home_controller.dart';
import 'package:wise/modules/invite_friend_page/invite_page.dart';
import 'package:wise/modules/recipients_page/recipient_pages.dart';
import 'widgets/custom_floating_buttom.dart';
import 'widgets/custom_navigation_bar.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomFloatingButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(),

      ///Navigation between pages from $BottomNavigationBar

      body: Navigator(
        //
        // InitialRoute help us to determinate our firts page
        initialRoute: '/homebottombar',

        // To use Navigator we need a key as we have to navigate with the key helps.
        //GetX helps to get the key with Get.nestedKey
        key: Get.nestedKey(1),

        // onGenerateRoute is reponsable to to control our navigation
        onGenerateRoute: (RouteSettings settings) {
          if (settings.name == '/homebottombar') {
            return GetPageRoute(
              settings: settings,
              page: () => HomeBottomBarPage(),
            );
          }
          if (settings.name == '/account') {
            return GetPageRoute(
              settings: settings,
              page: () => const AccountPage(),
            );
          }
          if (settings.name == '/recipients') {
            return GetPageRoute(
              settings: settings,
              page: () => const RecipientPages(),
            );
          }
          if (settings.name == '/invite') {
            return GetPageRoute(
              settings: settings,
              page: () => const InviteFriendPage(),
            );
          }
          return null;
        },
      ),
    );
  }
}
