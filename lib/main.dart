import 'package:calculator4/src/provider/provider_theme.dart';
import 'package:calculator4/src/views/screens/calculator_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/provider/provider_calculator.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ProviderTheme()),
    ChangeNotifierProvider(create: (context) => ProviderCalculator()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ProviderTheme>(context).currentTheme,
      home: const CalculatorHome(),
    );
  }
}
