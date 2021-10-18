import 'package:get/get.dart';

/// HOME CONTROLLER

class HomeController extends GetxController {
  final _currentIndex = 0.obs;
  static const KEY_NAVIGATION = 1;

  int get currentIndex => _currentIndex.value;

  ///
  /// This is how we navigate between pages on the $BottomNavigationBar
  /// We have to pass the key id because we will navigate using the key,
  /// with that we dont need to set any module page in the main.dart
  ///
  goToPage(int page ) {
    _currentIndex(page);

    //Homebottombar PAGE

    if (page == 0) {
      Get.toNamed('/homebottombar', id: KEY_NAVIGATION);
    }

    // Account PAGE

    if (page == 1) {
      Get.toNamed('/account', id: KEY_NAVIGATION);
    }

    // Recipients PAGE

    if (page == 2) {
      Get.toNamed('/recipients', id: KEY_NAVIGATION);
    }

    // Invite PAGE

    if (page == 3) {
      Get.toNamed('/invite', id: KEY_NAVIGATION);
    }
  }
}
