import 'package:get/get.dart';
import 'package:wise/modules/login_page/login_page.dart';

class LoginController extends GetxController {
  goToHomePage() {
    Get.offAllNamed('/home');
  }
}
