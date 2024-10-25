import 'package:flutter/material.dart';
import 'package:expressions/expressions.dart';

class CalcProvider with ChangeNotifier {
  String _displayValue = '0';

  String get displayValue => _displayValue;

  void input(String value) {
    if (_displayValue == '0') {
      _displayValue = value;
    } else {
      _displayValue += value;
    }
    notifyListeners();
  }

  void clear() {
    _displayValue = '0';
    notifyListeners();
  }

  // Add the calculate method
  void calculate() {
    try {
      // Analisa a expressão inserida pelo usuário
      final expression = Expression.parse(_displayValue);

      // Avaliador padrão para calcular a expressão
      const evaluator = ExpressionEvaluator();

      // Avalia a expressão e armazena o resultado
      final result = evaluator.eval(expression, {});

      // Converte o resultado para string e exibe no display
      _displayValue = result.toString();
    } catch (e) {
      // Em caso de erro, exibe "Error"
      _displayValue = 'Error';
    }
    notifyListeners();
  }
}
