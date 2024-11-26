import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class ProviderCalculator extends ChangeNotifier {
  String _expressionInput = '11+11';
  String _calculatedResult = '=22';
  String _calculatorFeedback = 'ok';

  String get expressionInput => _expressionInput;
  String get calculatedResult => _calculatedResult;
  String get calculatorFeedback => _calculatorFeedback;

  updateDisplay(String inputButton) {
    switch (inputButton) {
      case 'c':
        return clear();
      case 'del':
        return delete();

      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '.':
        _expressionInput += inputButton;
        break;

      case '+':
      case '-':
      case 'x':
      case '÷':
      case '%':
        addOperation(inputButton);
        break;

      case '=':
        return equal();
      default:
    } // end switch
    notifyListeners();
  } // end fun

  clear() {
    _calculatedResult = '';
    _expressionInput = '';
    _calculatorFeedback = '';
    notifyListeners();
  } // end clear fun

  delete() {
    _expressionInput =
        _expressionInput.substring(0, _expressionInput.length - 1);
    notifyListeners();
  } // end delete fun

  bool isTestLastChar(String lastChar) {
    return lastChar == '+' ||
        lastChar == '-' ||
        lastChar == 'x' ||
        lastChar == '÷' ||
        lastChar == '%';
  }

  addOperation(String inputButton) {
    if (inputButton.isNotEmpty) {
      String lastChar = _expressionInput[_expressionInput.length - 1];
      if (!isTestLastChar(lastChar)) {
        _expressionInput += inputButton;
      }
    } else {
      _expressionInput += inputButton;
    }
  } // ! End add Operation

  equal() {
    try {
      String inputExpression = _expressionInput;
      inputExpression = inputExpression.replaceAll('x', '*');
      inputExpression = inputExpression.replaceAll('÷', '/');

      Parser parser = Parser();
      Expression expression = parser.parse(inputExpression);

      ContextModel contextModel = ContextModel();
      double evaluate = expression.evaluate(EvaluationType.REAL, contextModel);

      _calculatedResult = evaluate.toString();
    } catch (e) {
      _calculatedResult = 'Error 😒';
      _calculatorFeedback = ' مش كذا 🙄';
    }
    notifyListeners();
  }
} //! end class
