import 'package:get/get.dart';
import 'package:wise/modules/send_page/widgets/send_controller.dart';

class SendBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendController());
  }
}
