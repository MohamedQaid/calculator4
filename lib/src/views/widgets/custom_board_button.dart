import 'package:calculator4/src/provider/provider_theme.dart';
import 'package:calculator4/src/theme/color_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'custom_button_calculator.dart';

class CustomBoardButton extends StatelessWidget {
  const CustomBoardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isLightEnable =
        Provider.of<ProviderTheme>(context).modeThemeLightEnable;
    return Column(
      children: [
        Row(
          children: [
            CustomButtonCalculator(
              titleButton: 'c',
              colorButton: isLightEnable
                  ? ColorApp.colorSecondLight
                  : ColorApp.colorSecondDark,
            ),
            CustomButtonCalculator(
              titleButton: '00',
              colorButton: isLightEnable
                  ? ColorApp.colorSecondLight
                  : ColorApp.colorSecondDark,
            ),
            CustomButtonCalculator(
              titleButton: '%',
              colorButton: isLightEnable
                  ? ColorApp.colorSecondLight
                  : ColorApp.colorSecondDark,
            ),
            CustomButtonCalculator(
              titleButton: '÷',
              colorButton: isLightEnable
                  ? ColorApp.colorPrimaryLight
                  : ColorApp.colorPrimaryDark,
              colorTitleButton: ColorApp.colorLight,
            ),
          ],
        ),
        Row(
          children: [
            CustomButtonCalculator(
              titleButton: '7',
              colorButton:
                  isLightEnable ? ColorApp.colorLight : ColorApp.colorDark,
            ),
            CustomButtonCalculator(
              titleButton: '8',
              colorButton:
                  isLightEnable ? ColorApp.colorLight : ColorApp.colorDark,
            ),
            CustomButtonCalculator(
              titleButton: '9',
              colorButton:
                  isLightEnable ? ColorApp.colorLight : ColorApp.colorDark,
            ),
            CustomButtonCalculator(
                titleButton: 'x',
                colorButton: isLightEnable
                    ? ColorApp.colorPrimaryLight
                    : ColorApp.colorPrimaryDark,
                colorTitleButton: ColorApp.colorLight),
          ],
        ),
        Row(
          children: [
            CustomButtonCalculator(
              titleButton: '6',
              colorButton:
                  isLightEnable ? ColorApp.colorLight : ColorApp.colorDark,
            ),
            CustomButtonCalculator(
              titleButton: '5',
              colorButton:
                  isLightEnable ? ColorApp.colorLight : ColorApp.colorDark,
            ),
            CustomButtonCalculator(
              titleButton: '4',
              colorButton:
                  isLightEnable ? ColorApp.colorLight : ColorApp.colorDark,
            ),
            CustomButtonCalculator(
                titleButton: '-',
                colorButton: isLightEnable
                    ? ColorApp.colorPrimaryLight
                    : ColorApp.colorPrimaryDark,
                colorTitleButton: ColorApp.colorLight),
          ],
        ),
        Row(
          children: [
            CustomButtonCalculator(
              titleButton: '3',
              colorButton:
                  isLightEnable ? ColorApp.colorLight : ColorApp.colorDark,
            ),
            CustomButtonCalculator(
              titleButton: '2',
              colorButton:
                  isLightEnable ? ColorApp.colorLight : ColorApp.colorDark,
            ),
            CustomButtonCalculator(
              titleButton: '1',
              colorButton:
                  isLightEnable ? ColorApp.colorLight : ColorApp.colorDark,
            ),
            CustomButtonCalculator(
                titleButton: '+',
                colorButton: isLightEnable
                    ? ColorApp.colorPrimaryLight
                    : ColorApp.colorPrimaryDark,
                colorTitleButton: ColorApp.colorLight),
          ],
        ),
        Row(
          children: [
            CustomButtonCalculator(
              titleButton: '0',
              colorButton:
                  isLightEnable ? ColorApp.colorLight : ColorApp.colorDark,
            ),
            CustomButtonCalculator(
              titleButton: '.',
              colorButton:
                  isLightEnable ? ColorApp.colorLight : ColorApp.colorDark,
            ),
            CustomButtonCalculator(
              titleButton: 'del',
              colorButton:
                  isLightEnable ? ColorApp.colorLight : ColorApp.colorDark,
            ),
            CustomButtonCalculator(
                titleButton: '=',
                colorButton: isLightEnable
                    ? ColorApp.colorPrimaryLight
                    : ColorApp.colorPrimaryDark,
                colorTitleButton: ColorApp.colorLight),
          ],
        ),
      ],
    );
  }
}
