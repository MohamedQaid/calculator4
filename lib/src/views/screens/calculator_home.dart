import 'package:calculator4/src/provider/provider_calculator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/app_bar.dart';
import '../widgets/custom_board_button.dart';
import '../widgets/custom_text_box_calculator.dart';

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
              child: CustomTextBoxCalculator(
                textString:
                    Provider.of<ProviderCalculator>(context).calculatedResult,
              )),
          Expanded(
              flex: 2,
              child: CustomTextBoxCalculator(
                fontSize: 40,
                textString: Provider.of<ProviderCalculator>(context).expressionInput,
              )),
          Expanded(
              flex: 1,
              child: CustomTextBoxCalculator(
                textDirection: TextDirection.rtl,
                textString:
                    Provider.of<ProviderCalculator>(context).calculatorFeedback,
                alignment: Alignment.center,
                fontSize: 22,
              )),
          const Expanded(flex: 6, child: CustomBoardButton()),
        ],
      ),
    );
  }
}
