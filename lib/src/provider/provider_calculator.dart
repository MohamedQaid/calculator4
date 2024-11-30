import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class ProviderCalculator extends ChangeNotifier {
  String _expressionInput = '';
  String _calculatedResult = '';
  String _calculatorFeedback = '🔻 لنبدأ 👌🏻';

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
      case '00':
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
        equal();
      default:
    } //! end switch
    notifyListeners();
  } //! end fun

  clear() {
    _calculatedResult = '';
    _expressionInput = '';
    _calculatorFeedback = '';
    notifyListeners();
  } //! end clear fun

  delete() {
    if (_expressionInput.isNotEmpty) {
      _expressionInput =
          _expressionInput.substring(0, _expressionInput.length - 1);
    }
    notifyListeners();
  } //! end delete fun

  checkLastChar(checkInputOperation) {
    if (checkInputOperation = _expressionInput.endsWith('%') ||
        _expressionInput.endsWith('x') ||
        _expressionInput.endsWith('+') ||
        _expressionInput.endsWith('-') ||
        _expressionInput.endsWith('÷')) {
      return true;
    }
  }

  void addOperation(String inputOperation) {
    if (_expressionInput.isNotEmpty) {
      if (checkLastChar(inputOperation) == true) {
        _calculatorFeedback =  '🙄';
      } else {
        _expressionInput += inputOperation;
      }
      notifyListeners();
    }
    if (_expressionInput.isEmpty && inputOperation == '-') {
      _expressionInput += inputOperation;
    }
    notifyListeners();
  }

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
      if (_calculatedResult.endsWith('.0')) {
        _calculatedResult = _calculatedResult.replaceAll('.0', '');
      }

    } catch (e) {
      _calculatedResult = 'Error 😒';
      _calculatorFeedback = ' مش كذا 🙄';
    }
    notifyListeners();
  } //! end equal
} //! end class
