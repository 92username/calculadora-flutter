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
        theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
        home: HomeScreen(toggleTheme: _toggleTheme),
      ),
    );
  }
}
