import 'package:flutter/material.dart';

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
    // Implement the calculation logic here
    // For simplicity, let's assume it just evaluates the expression
    try {
      final result = _evaluateExpression(_displayValue);
      _displayValue = result.toString();
    } catch (e) {
      _displayValue = 'Error';
    }
    notifyListeners();
  }

  double _evaluateExpression(String expression) {
    // Implement a simple expression evaluator
    // This is a placeholder for actual calculation logic
    // You can use a package like 'expressions' for a more robust solution
    return double.parse(expression); // Placeholder
  }
}
