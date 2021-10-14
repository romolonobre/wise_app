import 'package:get/get.dart';
import 'package:wise/application/models/recent_currency_model.dart';

class HomeBottomBarController extends GetxController {
  var recentCurrencyItens = <RecentCurrencyModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchCurrencyItens();
  }

  void fetchCurrencyItens() async {
    await Future.delayed(Duration(milliseconds: 1));
    var recentCurrencyResult = [
      RecentCurrencyModel(
          imageFlag: 'assets/images/brazil.png',
          amount: '3,599,00',
          currencyType: 'Real'),
      RecentCurrencyModel(
          imageFlag: 'assets/images/australia.png',
          amount: '599,00',
          currencyType: 'Au Dollar'),
      RecentCurrencyModel(
          imageFlag: 'assets/images/europa.png',
          amount: '99,00',
          currencyType: 'Euro'),
      RecentCurrencyModel(
          imageFlag: 'assets/images/uk.png',
          amount: '23,499.84',
          currencyType: 'Britsh Pounds'),
    ];

    recentCurrencyItens.value = recentCurrencyResult;
  }
}
