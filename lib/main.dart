import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutu_api/screen/home.dart';

import 'controller/currency_controller.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => CurrencyController(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    CurrencyController currencyController = CurrencyController();
    currencyController.getCurrency();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
