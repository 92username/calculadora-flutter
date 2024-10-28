import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/calc_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = true;

  void _toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CalcProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculator',
        theme: _isDarkTheme 
          ? ThemeData.dark().copyWith(colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 26, 39, 25)))
          : ThemeData.light().copyWith(colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 27, 216, 223))),
        home: HomeScreen(toggleTheme: _toggleTheme),
      ),
    );
  }
}
