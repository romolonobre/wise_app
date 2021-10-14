import 'package:get/get.dart';
import 'package:wise/modules/login_page/login_controller.dart';

/// Login Bindings
///
class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
