import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/display.dart';
import '../providers/calc_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback toggleTheme;

  const HomeScreen({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Calculadora Avançada'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Display(value: context.watch<CalcProvider>().displayValue),
            const SizedBox(height: 20.0),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // Calcular tamanhos dinamicamente
                  double buttonHeight = constraints.maxHeight * 0.1;
                  double buttonWidth = constraints.maxWidth * 0.2;

                  return GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    children: [
                      CalculatorButton(
                        label: '7',
                        onPressed: () =>
                            context.read<CalcProvider>().input('7'),
                        color: Theme.of(context).colorScheme.primary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '8',
                        onPressed: () =>
                            context.read<CalcProvider>().input('8'),
                        color: Theme.of(context).colorScheme.primary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '9',
                        onPressed: () =>
                            context.read<CalcProvider>().input('9'),
                        color: Theme.of(context).colorScheme.primary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '/',
                        onPressed: () =>
                            context.read<CalcProvider>().input('/'),
                        color: Theme.of(context).colorScheme.secondary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '4',
                        onPressed: () =>
                            context.read<CalcProvider>().input('4'),
                        color: Theme.of(context).colorScheme.primary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '5',
                        onPressed: () =>
                            context.read<CalcProvider>().input('5'),
                        color: Theme.of(context).colorScheme.primary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '6',
                        onPressed: () =>
                            context.read<CalcProvider>().input('6'),
                        color: Theme.of(context).colorScheme.primary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '*',
                        onPressed: () =>
                            context.read<CalcProvider>().input('*'),
                        color: Theme.of(context).colorScheme.secondary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '1',
                        onPressed: () =>
                            context.read<CalcProvider>().input('1'),
                        color: Theme.of(context).colorScheme.primary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '2',
                        onPressed: () =>
                            context.read<CalcProvider>().input('2'),
                        color: Theme.of(context).colorScheme.primary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '3',
                        onPressed: () =>
                            context.read<CalcProvider>().input('3'),
                        color: Theme.of(context).colorScheme.primary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '-',
                        onPressed: () =>
                            context.read<CalcProvider>().input('-'),
                        color: Theme.of(context).colorScheme.secondary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: 'C',
                        onPressed: () => context.read<CalcProvider>().clear(),
                        color: Colors.red,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '0',
                        onPressed: () =>
                            context.read<CalcProvider>().input('0'),
                        color: Theme.of(context).colorScheme.primary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '=',
                        onPressed: () =>
                            context.read<CalcProvider>().calculate(),
                        color: Colors.green,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                      CalculatorButton(
                        label: '+',
                        onPressed: () =>
                            context.read<CalcProvider>().input('+'),
                        color: Theme.of(context).colorScheme.secondary,
                        height: buttonHeight,
                        width: buttonWidth,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
