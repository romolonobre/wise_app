import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise/modules/account_page/widgets/account_app_bar.dart';
import 'package:wise/modules/account_page/widgets/profile_avatar.dart';
import 'package:wise/modules/account_page/widgets/profile_name_header.dart';
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
            children: const [
              ProfileAvatar(),
              SizedBox(height: 10),
              ProfileNameHeader(),
            ],
          ),
        ),
      ),
    );
  }
}
