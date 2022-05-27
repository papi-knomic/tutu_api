import 'package:flutter/cupertino.dart';
import 'package:tutu_api/repo/currency_repo.dart';

import '../model/currency_model.dart';

class CurrencyController extends ChangeNotifier {
  CurrencyRepo currencyRepo = CurrencyRepo();
  List<Currency> _currencies = [];
  List<Currency> get currencies => _currencies;
  int _count = 0;
  int get count => _count;

  void getCurrency() async {
    _currencies = [];
    _currencies = await currencyRepo.getCurrency();
    getCount();
    notifyListeners();
  }

  void getCount() {
    _count = _currencies.length;
    notifyListeners();
  }
}
