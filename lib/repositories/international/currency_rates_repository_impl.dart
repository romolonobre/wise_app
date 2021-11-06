import 'package:wise/application/models/currencies_rate_model.dart';
import 'package:wise/rest_client/rest_client.dart';

import './currency_rates_repository.dart';

class CurrencyRatesRepositoryImpl implements CurrencyRatesRepository {
  final RestClient _restClient;
  CurrencyRatesRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<List<CurrenciesRateModel>> getRates() async {
    final result = await _restClient
        .get<List<CurrenciesRateModel>>('/latest.json', decoder: (data) {
      final resultData = data['rates'];
      if (resultData != null) {
        return resultData
            .map<CurrenciesRateModel>((r) => CurrenciesRateModel.fromMap(r))
            .toList();
      }
      return <CurrenciesRateModel>[];
    });
    // TODO: implement getRates
    if (result.hasError) {
      print(result.statusText);
      throw Exception('error');
    }
    return result.body ?? <CurrenciesRateModel>[];
  }
}
