import 'dart:math';

class CalculatorLogic {
  /// Função de adição
  double add(double a, double b) => a + b;

  /// Função de subtração
  double subtract(double a, double b) => a - b;

  /// Função de multiplicação
  double multiply(double a, double b) => a * b;

  /// Função de divisão com tratamento de divisão por zero
  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError(
          'Erro: Divisão por zero não é permitida. Valor de b: $b');
    }
    return a / b;
  }

  /// Função para calcular a raiz quadrada com tratamento de número negativo
  double squareRoot(double a) {
    if (a < 0) {
      throw ArgumentError(
          'Erro: Não é possível calcular a raiz quadrada de um número negativo. Valor de a: $a');
    }
    return sqrt(a);
  }

  /// Função para calcular porcentagem (a como porcentagem de b)
  double percentage(double a, double b) {
    if (b == 0) {
      throw ArgumentError(
          'Erro: O denominador para o cálculo de porcentagem não pode ser zero. Valor de b: $b');
    }
    return (a / b) * 100;
  }

  /// Função de exponenciação
  double power(double a, double b) => pow(a, b).toDouble();
}
