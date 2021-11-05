import 'package:wise/application/constants/api_key.dart';
import 'package:wise/application/models/currencies_rate_model.dart';
import 'package:wise/rest_client/rest_client.dart';

/*import 'currency_rates_repository.dart';

class AllCurrencyRepositoryImpl implements AllCurrencyRepository {
  final RestClient _restClient;

  AllCurrencyRepositoryImpl({
    required RestClient restClient,
  }) : _restClient = restClient;

  @override
  Future<List<AllCurrenciesModel>> getAllCurrencies() async {
    final result = await _restClient.get<List<AllCurrenciesModel>>(
      '/currencies.json?app_id=' + API_ID,
      decoder: (data) {
        final resultData = data['currencies'];
        if (resultData != null) {
          return resultData
              .map<AllCurrenciesModel>((c) => AllCurrenciesModel.fromMap(c))
              .toList();
        }
        return <AllCurrenciesModel>[];
      },
    );
    if (result.hasError) {
      print(result.statusText);
      throw Exception('Errorrrr');
    }
    return result.body ?? <AllCurrenciesModel>[];
  }
} */
