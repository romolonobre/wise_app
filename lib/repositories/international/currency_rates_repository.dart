import 'package:wise/application/models/currencies_rate_model.dart';

abstract class CurrencyRatesRepository {
  Future<List<CurrenciesRateModel>> getRates();
}
