import 'package:get/get.dart';
import 'package:wise/modules/initial_page/initial_controller.dart';

/// INITIAL BINDINGS

/// We use bindings to let GetX execute or store the dependencies
/// to be executed before the page is loaded. we call the bindings
/// in the INITIALPAGEMODULE

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => InitialController(),
    );
  }
}
