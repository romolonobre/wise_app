import 'package:wise/application/models/currencies_rate_model.dart';

abstract class CurrencyRatesService {
  Future<List<CurrenciesRateModel>> getRates();
}
