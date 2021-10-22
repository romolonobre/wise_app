import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise/application/constants/contants.dart';
import 'package:wise/application/widgets/custom_buttom.dart';
import 'package:wise/application/widgets/custom_text_buttom.dart';

import 'widgets/image_header.dart';
import 'widgets/sub_tittle_text.dart';
import 'widgets/title_header.dart';

/// This widget is responsible for structuring the $InviteFriendPage .

class InviteFriendPage extends StatelessWidget {
  const InviteFriendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: Get.width,
        height: Get.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),

            //TitleHeader

            const TitleHeader(),
            const SizedBox(height: 30),

            //ImageHeader

            const ImageHeader(),
            const SizedBox(height: 40),

            //DescipitionText

            const DescipitionText(),
            const SizedBox(height: 15),

            //CustomTextButtom

            const CustomTextButtom(label: 'How to qualify'),
            const SizedBox(height: 30),
            CustomButtom(
                label: 'Invite friends',
                onPressed: () => print('Invite friends'),
                width: double.infinity,
                color: buttomColor),
            const SizedBox(height: 14),

            //CustomTextButtom

            CustomButtom(
              label: 'Track your invites',
              onPressed: () => print('Invite friends'),
              width: double.infinity,
              color: Colors.white,
              labelColor: Colors.blue.shade400,
            ),
          ],
        ),
      ),
    );
  }
}
