import 'package:wise/application/models/currencies_rate_model.dart';
import 'package:wise/repositories/international/currency_rates_repository.dart';

abstract class AllCurrenciesService {
  Future<List<CurrenciesRateModel>> getCurrencires();
}
