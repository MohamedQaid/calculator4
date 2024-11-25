import 'package:flutter/material.dart';
import 'custom_button_calculator.dart';

class CustomBoardButton extends StatelessWidget {
  const CustomBoardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            CustomButtonCalculator(),
            CustomButtonCalculator(),
            CustomButtonCalculator(),
            CustomButtonCalculator(),
          ],
        ),
        Row(
          children: [
            CustomButtonCalculator(),
            CustomButtonCalculator(),
            CustomButtonCalculator(),
            CustomButtonCalculator(),
          ],
        ),
        Row(
          children: [
            CustomButtonCalculator(),
            CustomButtonCalculator(),
            CustomButtonCalculator(),
            CustomButtonCalculator(),
          ],
        ),
        Row(
          children: [
            CustomButtonCalculator(),
            CustomButtonCalculator(),
            CustomButtonCalculator(),
            CustomButtonCalculator(),
          ],
        ),
        Row(
          children: [
            CustomButtonCalculator(),
            CustomButtonCalculator(),
            CustomButtonCalculator(),
            CustomButtonCalculator(),
          ],
        ),
      ],
    );
  }
}
