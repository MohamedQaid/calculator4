import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/custom_board_button.dart';
import '../widgets/custom_text_box_calculator.dart';

class CalculatorHome extends StatelessWidget {
  const CalculatorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const Column(
        children: [
          Expanded(
              flex: 1,
              child: CustomTextBoxCalculator(
                textString: '= 8743987394739',
              )),
          Expanded(
              flex: 2,
              child: CustomTextBoxCalculator(
                fontSize: 40,
                textString: '10002+49494',
              )),
          Expanded(
              flex: 1,
              child: CustomTextBoxCalculator(
                textDirection: TextDirection.rtl,
                textString: 'تجربة ',
                alignment: Alignment.center,
                fontSize: 22,
              )),
          Expanded(flex: 6, child: CustomBoardButton()),
        ],
      ),
    );
  }
}
