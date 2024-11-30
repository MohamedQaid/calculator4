import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomTextBoxCalculator extends StatelessWidget {
  const CustomTextBoxCalculator({
    super.key,
    this.maxLines = 2,
    this.fontSize = 20.0,
    this.paddingTop = 4,
    this.colorText,
    this.textString = ' - - - ',
    this.alignment,
    this.textDirection,
  });

  final int maxLines;
  final double fontSize;
  final double paddingTop;
  final Color? colorText;
  final String textString;
  final TextDirection? textDirection;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      width: double.infinity,
      padding: EdgeInsets.only(left: 8, right: 8, top: paddingTop),
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      child: AutoSizeText(
        textDirection: textDirection,
        maxFontSize: double.infinity,
      
        maxLines: maxLines,
        textString,
        style: TextStyle(
          fontFamily: 'Tido',
          fontSize: fontSize,
          color: colorText,
        ),
      ),
    );
  }
}
