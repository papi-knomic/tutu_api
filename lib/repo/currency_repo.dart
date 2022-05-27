import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../model/currency_model.dart';

class CurrencyRepo {
  
  Future<List<Currency>> getCurrency() async {
    List<Currency> _currencies = [];
    Response response = await http.get(
        Uri.parse("https://countriesnow.space/api/v0.1/countries/currency"));
    if (response.statusCode == 200) {
      _currencies = [];
      _currencies.addAll(DataList.fromJson(json.decode(response.body)).data);
    }
    return _currencies;
  }
}
