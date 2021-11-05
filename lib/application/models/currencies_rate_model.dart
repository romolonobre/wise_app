import 'dart:convert';

class CurrenciesRateModel {
  final String countryInitial;
  final double rate;

  CurrenciesRateModel({
    required this.countryInitial,
    required this.rate,
  });

  Map<String, dynamic> toMap() {
    return {
      'countryInitial': countryInitial,
      'rate': rate,
    };
  }

  factory CurrenciesRateModel.fromMap(Map<String, dynamic> map) {
    return CurrenciesRateModel(
      countryInitial: map['countryInitial'],
      rate: map['rate'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CurrenciesRateModel.fromJson(String source) =>
      CurrenciesRateModel.fromMap(json.decode(source));
}
