import 'package:get/get.dart';
import 'package:http/http.dart';

class RestClient extends GetConnect {
  RestClient() {
    httpClient.baseUrl = 'https://openexchangerates.org/api';
  }
}
