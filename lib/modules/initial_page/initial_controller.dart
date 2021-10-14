import 'package:get/get.dart';
import 'package:wise/application/models/initial_slider_model.dart';

/// INITIAL CONTROLLER

class InitialController extends GetxController {
  //
  // We use $goToLoginPage() to navigate to the loginPage
  //
  goToLoginPage() {
    Get.toNamed('loginPage');
  }

  // This is the list model that populate the
  //  slider content of the $INITIALPAGE

  var globeSliderlist = <InitialSliderModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchInitialSliderItens();
  }

  /// Simulating API date request

  void fetchInitialSliderItens() async {
    await Future.delayed(Duration(microseconds: 1));
    var initialSliderlistResult = [
      InitialSliderModel(
        imagePath: 'assets/images/globo1.png',
        title: 'Send money all around the globe, quick and easy',
        subTitle: 'Try our new way to send money when and where you want',
      ),
      InitialSliderModel(
        imagePath: 'assets/images/globo2.png',
        title: 'Use wise when you travel, oder Wise card right now',
        subTitle:
            'When you travel you can enjoy our currency exchagange without transctions fee',
      ),
      InitialSliderModel(
        imagePath: 'assets/images/globo3.png',
        title: 'Hold 50+ currencies and covert between them in seconds',
        subTitle:
            'Wise always get the real exchange rate, and the low fees we known for',
      )
    ];
    globeSliderlist.value = initialSliderlistResult;
  }
}
