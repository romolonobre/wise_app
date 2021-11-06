import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:wise/application/constants/contants.dart';
import 'package:wise/application/widgets/custom_buttom.dart';
import 'package:wise/modules/initial_page/initial_controller.dart';
import 'package:wise/modules/initial_page/widgtes/sign_in_apple_buttom.dart';
import 'widgtes/slider_page_view_widget.dart';

/// We use INITIALPAGE to organize all the custom
/// widgets we have create for this page

class InitialPage extends GetView<InitialController> {
  InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueMainColor,
      body: Column(
        children: [
          // SLIDER PAGE VIEW WIDGET

          const SliderPageViewWidget(),

          // We have create a container to positioner the
          // buttons  'Log in' , 'Register', 'Sigin in with apple'
          Container(
            height: Get.height * 0.3,
            color: blueMainColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CUSTOM LOG IN BUTTOM

                      CustomButtom(
                        label: 'Log in',
                        onPressed: () => controller.goToLoginPage(),
                        width: Get.width * 0.46,
                        color: buttomColor,
                      ),
                      const SizedBox(width: 12),

                      // CUSTOM REGISTRER BUTTOM

                      CustomButtom(
                        label: 'Register',
                        onPressed: () => print('Register'),
                        width: Get.width * 0.46,
                        color: buttomColor,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),

                //  SING IN APPLE BUTTOM

                const SignInAppleButtom()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
