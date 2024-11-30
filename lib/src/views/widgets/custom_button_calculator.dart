import 'package:calculator4/src/provider/provider_calculator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomButtonCalculator extends StatelessWidget {
  const CustomButtonCalculator(
      {super.key,
      required this.titleButton,
      required this.colorButton,
      this.colorTitleButton,
      this.onTap});

  final String titleButton;
  final Color colorButton;
  final Color? colorTitleButton;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Provider.of<ProviderCalculator>(context, listen: false)
              .updateDisplay(titleButton);
        },
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
          height: MediaQuery.sizeOf(context).height / 11,
          decoration: BoxDecoration(
              color: colorButton, borderRadius: BorderRadius.circular(8)),
          child: Text(
            titleButton,
            style: TextStyle(
              fontFamily: 'Tido',
              color: colorTitleButton,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
