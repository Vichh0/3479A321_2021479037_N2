import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
  var logger = Logger();

  logger.d("Logger is working!");
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  Color _seedColor = Colors.blue;

  void _changeColor(Color color) {
    setState(() {
      _seedColor = color;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2021479037',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: _seedColor),
        brightness: Brightness.light,
        primaryColor: const Color.fromARGB(255, 6, 31, 81),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pinkAccent,
          foregroundColor: Colors.white,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 18, color: Colors.black87),
          headlineMedium: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      home: MyHomePage(
        title: 'la casa',
        onChangeColor: () => _changeColor(Colors.blue),
      ),
    );
  }
}
