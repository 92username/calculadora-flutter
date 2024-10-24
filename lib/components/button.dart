import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final Color color;

  const CalculatorButton({
    required this.label,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          backgroundColor: color, // Atualizado para usar o parâmetro `color`
          padding: const EdgeInsets.all(10.0),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
          ),
        ),
      ),
    );
  }
}
