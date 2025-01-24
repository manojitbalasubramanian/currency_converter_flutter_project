import 'package:currency_converter/currency_converter_cupertino_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:currency_converter/currency_converter_home_page.dart';
// import "./currency_converter_home_page.dart";

void main() {
  runApp(const MyApp());
}

//State
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterHomePage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoApp(),
    );
  }
}
