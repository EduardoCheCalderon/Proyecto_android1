import 'package:flutter/material.dart';
import 'counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 85, 193, 191)),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Inicio',
        incrementCounter: incrementCounter,
        resetCounter: resetCounter,
        decrementCounter: decrementCounter,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Function incrementCounter;
  final Function resetCounter;
  final Function decrementCounter;

  const MyHomePage({
    Key? key,
    required this.title,
    required this.incrementCounter,
    required this.resetCounter,
    required this.decrementCounter,
  }) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            const Text(
              'Contador:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => widget.decrementCounter(setState),
            tooltip: 'Decrement',
            backgroundColor: Color.fromARGB(255, 85, 193, 191),
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => widget.resetCounter(setState),
            tooltip: 'Reset',
            backgroundColor: Color.fromARGB(255, 85, 193, 191),
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => widget.incrementCounter(setState),
            tooltip: 'Increment',
            backgroundColor: Color.fromARGB(255, 85, 193, 191),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
