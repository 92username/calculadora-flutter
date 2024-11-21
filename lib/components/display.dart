import 'package:flutter/material.dart';

/// A widget that displays a value inside a styled container.
class Display extends StatelessWidget {
  /// The value to be displayed.
  final String value;

  /// Creates a [Display] widget.
  const Display({required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline,
          width: 1,
        ),
      ),
      child: Text(
        value,
        style: TextStyle(
          fontSize: 48,
          color: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.right,
      ),
    );
  }
}
