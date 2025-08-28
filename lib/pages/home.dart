import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.onChangeColor});

  final String title;
  final VoidCallback onChangeColor;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Pixel-Art-Hot-Pepper-2-1.webp',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(width: 16),
                Image.asset(
                  'assets/Pixel-Art-Pizza-2.webp',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(width: 16),
                Image.asset(
                  'assets/Pixel-Art-Watermelon-3.webp',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            const SizedBox(height: 20),
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