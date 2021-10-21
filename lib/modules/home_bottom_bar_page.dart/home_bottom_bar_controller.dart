import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise/application/models/new_trasaction_model.dart';
import 'package:wise/application/models/recent_currency_model.dart';

class HomeBottomBarController extends GetxController {
  var recentCurrencyItens = <RecentCurrencyModel>[].obs;
  var newTransactionsItens = <NewTrasactionModel>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchCurrencyItens();
    fetchNewTransactionItens();
  }

// fetchCurrencyItens will fetch the recentCurrency list

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

// fetchNewTransactionItens will fetch the newtransaction list
  void fetchNewTransactionItens() async {
    await Future.delayed(Duration(milliseconds: 1));
    var newtransactionResult = [
      NewTrasactionModel(
          leadingIcon: Icons.credit_card,
          description: 'By Tesco Store 2834',
          subDescription: 'Spent',
          amount: 'GB 48'),
      NewTrasactionModel(
          leadingIcon: Icons.credit_card,
          description: 'By Tesco Store Grocery',
          subDescription: 'Card Checked',
          amount: 'GB 23'),
      NewTrasactionModel(
          leadingIcon: Icons.read_more,
          description: 'From Highman Spring',
          subDescription: 'Received',
          amount: 'GB 234'),
      NewTrasactionModel(
          leadingIcon: Icons.add,
          description: 'To your GBP balance',
          subDescription: 'Added',
          amount: 'GB 87'),
      NewTrasactionModel(
          leadingIcon: Icons.credit_card,
          description: 'By Zara London',
          subDescription: 'Spent',
          amount: 'GB 190'),
      NewTrasactionModel(
          leadingIcon: Icons.credit_card,
          description: 'By Tesco Store 2834',
          subDescription: 'Spent',
          amount: 'GB 48'),
      NewTrasactionModel(
          leadingIcon: Icons.credit_card,
          description: 'By Tesco Store 2834',
          subDescription: 'Spent',
          amount: 'GB 48'),
      NewTrasactionModel(
          leadingIcon: Icons.credit_card,
          description: 'By Tesco Store 2834',
          subDescription: 'Spent',
          amount: 'GB 48')
    ];

    newTransactionsItens.value = newtransactionResult;
  }
}
