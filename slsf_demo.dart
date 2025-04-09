import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override


  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Stateless & Stateful widgets Demo',
      home: const MyHomePage(title: 'Login Page'), // Set MyHomePage as the home widget
    );

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),

      ),

      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2.5), // Set border color and width
            borderRadius: BorderRadius.circular(8), // Optional: add rounded corners
          ),
          padding: const EdgeInsets.all(16.0),

          child: Column( // Use Column to arrange children vertically
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.purple, // Set the text color here
                  fontSize: 24, // Optional: set the font size
                  fontWeight: FontWeight.bold, // Optional: set the font weight
                ),
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border when enabled
                    ),
                  )
                ),

              const SizedBox(height: 16),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0), // Border when enabled
                  ),
                ),
              ),

              const SizedBox(height: 16),

              ElevatedButton(

                onPressed: () {},

                child: const Text('Login'),

              ),

            ],

          ),

        ),

      ),

    );

  }
}
