import 'package:calculator4/src/views/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class CalculatorHome extends StatelessWidget {
  const CalculatorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        child: const Text('test run'),
      ),
    );
  }
}
