import 'package:get/get.dart';
import 'package:wise/modules/splash_page/splash_controller.dart';

/// Splash bindings
///
class SplahsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
