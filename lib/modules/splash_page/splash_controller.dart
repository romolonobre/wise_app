import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';

class SplashController extends GetxController {
  /// We use onReady to navigater from $SPLASHPAGE to
  /// the $INITIALPAGE
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 10), () {
      Get.offAllNamed('/InitialPage');
    });
  }
}
