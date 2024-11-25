import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/custom_board_button.dart';

class CalculatorHome extends StatelessWidget {
  const CalculatorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.deepOrange,
              )),
          const Expanded(flex: 6, child: CustomBoardButton()),
        ],
      ),
    );
  }
}
