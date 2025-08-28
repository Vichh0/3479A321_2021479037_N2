import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _seedColor = Colors.pink;

  void _changeColor(Color color) {
    setState(() {
      _seedColor = color;
    });
  }
//ah
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2021479037',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: _seedColor),
      ),
      home: MyHomePage(
        title: 'la casa',
        onChangeColor: () => _changeColor(Colors.green),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.onChangeColor});

  final String title;
  final VoidCallback onChangeColor;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
//a
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: widget.onChangeColor,
        tooltip: 'color',
        child: const Icon(Icons.brush),
      ),
      persistentFooterButtons: [
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increase',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: _decreaseCounter,
          tooltip: 'Decrease',
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: _resetCounter,
          tooltip: 'Reset',
          child: const Icon(Icons.refresh),
        ),
      ],
    );
  }
}
