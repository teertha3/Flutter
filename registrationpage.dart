import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive Registration UI',
      home: Responsive(),
    );
  }
}

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth <= 600) {
      return const Mobile_();
    } else if (screenWidth > 600 && screenWidth <= 1200) {
      return const Tablet_();
    } else {
      return const Desktop_();
    }
  }
}

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 450,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2.5),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              'REGISTER',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: null,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}

// Stateful widgets for each screen type

class Mobile_ extends StatefulWidget {
  const Mobile_({super.key});
  @override
  State<Mobile_> createState() => MobileState();
}

class MobileState extends State<Mobile_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mobile - Register")),
      body: const RegistrationPage(),
    );
  }
}

class Tablet_ extends StatefulWidget {
  const Tablet_({super.key});
  @override
  State<Tablet_> createState() => TabletState();
}

class TabletState extends State<Tablet_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tablet - Register")),
      body: const RegistrationPage(),
    );
  }
}

class Desktop_ extends StatefulWidget {
  const Desktop_({super.key});
  @override
  State<Desktop_> createState() => DesktopState();
}

class DesktopState extends State<Desktop_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Desktop - Register")),
      body: const RegistrationPage(),
    );
  }
}
