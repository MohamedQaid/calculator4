import 'package:flutter/material.dart';

class CustomButtonCalculator extends StatelessWidget {
  const CustomButtonCalculator({
    super.key,
    required this.titleButton,
    required this.colorButton,
    this.colorTitleButton ,
  });

  final String titleButton;
  final Color colorButton;
  final Color? colorTitleButton;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
        height: MediaQuery.sizeOf(context).height / 11,
        decoration: BoxDecoration(
            color: colorButton, borderRadius: BorderRadius.circular(8)),
        child: Text(
          titleButton,
          style: TextStyle(
            color: colorTitleButton,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
