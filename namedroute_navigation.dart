import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/about': (context) => AboutScreen(),
        '/achievements':(context) => AchievementsScreen(),
        '/contacts':(context) => ContactScreen(),
      },
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Home'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text('About'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/achievements');
                },
                child: Text('Achievements'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contacts');
                },
                child: Text('Contact'),
              ),
            ],
          ),
          SizedBox(height: 150),
          Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(child: Text('Welcome to Home Page.',),),
          ),
        ],
      ),
    );
  }
}
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Home'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text('About'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/achievements');
                },
                child: Text('Achievements'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contacts');
                },
                child: Text('Contact'),
              ),
            ],
          ),
          SizedBox(height: 250),
          Text('Welcome to About Page.'),
        ],
      ),
    );
  }
}

class AchievementsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Achievement')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Home'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text('About'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/achievements');
                },
                child: Text('Achievements'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contacts');
                },
                child: Text('Contact'),
              ),
            ],
          ),
          SizedBox(height: 250),
          Text('Welcome to Achievements Page.'),
        ],
      ),
    );
  }
}

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Home'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text('About'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/achievements');
                },
                child: Text('Achievements'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
                child: Text('Contact'),
              ),
            ],
          ),
          SizedBox(height: 250),
          Text('Welcome to Contact Page.'),
        ],
      ),
    );
  }
}
