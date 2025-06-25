import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Top-level app widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless vs Stateful Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Widget Demo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyStatelessWidget(),   // Static text widget
              SizedBox(height: 20),
              MyStatefulWidget(),    // Counter with button
            ],
          ),
        ),
      ),
    );
  }
}

// A simple StatelessWidget
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'I am a Stateless Widget',
      style: TextStyle(fontSize: 20, color: Colors.blue),
    );
  }
}

// A StatefulWidget that increments a counter
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Counter: $counter',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _increment,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
