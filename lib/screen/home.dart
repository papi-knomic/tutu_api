import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import '../controller/currency_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('${context.watch<CurrencyController>().count}'),
      ),
    );
  }
}
