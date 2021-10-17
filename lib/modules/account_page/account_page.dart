import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise/modules/account_page/widgets/account_app_bar.dart';
import 'package:wise/modules/account_page/widgets/icon_card_functionality.dart';
import 'package:wise/modules/account_page/widgets/profile_avatar.dart';
import 'package:wise/modules/account_page/widgets/profile_name_header.dart';
import 'package:wise/modules/account_page/widgets/wise_bank_card_list_view.dart';
import 'package:wise/modules/home_bottom_bar_page.dart/widgets/custom_app_bar.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AccountAppBar(),
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              const ProfileAvatar(),
              const SizedBox(height: 10),
              const ProfileNameHeader(),
              const SizedBox(height: 10),
              const WiseBankCardListView(),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  IconCardFunctionality(
                      icon: Icon(Icons.ac_unit), label: 'Freeze card'),
                  IconCardFunctionality(
                      icon: Icon(Icons.credit_card), label: 'Card details'),
                  IconCardFunctionality(
                      icon: Icon(Icons.settings), label: 'Manage card'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
