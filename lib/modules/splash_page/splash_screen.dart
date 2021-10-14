import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise/application/constants/contants.dart';
import 'package:wise/modules/splash_page/splash_controller.dart';

/// SPLAH PAGE

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: blueMainColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            // Logo value

            Image.network(
              'https://images.squarespace-cdn.com/content/v1/58775efdd482e90f8535f34f/1613729300721-QEJVSNQ0VLYCOS0A6RMY/fast-flag-small-02.png',
              height: Get.height * 0.5,
              width: Get.width * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
