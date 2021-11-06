import 'package:wise/application/models/currencies_rate_model.dart';
import 'package:wise/repositories/international/currency_rates_repository.dart';

import './currency_rates_service.dart';

class CurrencyRatesServiceImpl implements CurrencyRatesService {
  final CurrencyRatesRepository _currencyRatesRepository;
  CurrencyRatesServiceImpl(
      {required CurrencyRatesRepository currencyRatesRepository})
      : _currencyRatesRepository = currencyRatesRepository;

  @override
  Future<List<CurrenciesRateModel>> getRates() {
    print(_currencyRatesRepository);
    return _currencyRatesRepository.getRates();

    // TODO: implement getRates
    throw UnimplementedError();
  }
}
