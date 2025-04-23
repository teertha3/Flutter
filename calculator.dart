import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless & Stateful widgets Demo',
      home: const MyHomePage(title: 'Calculator'),
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
  int val1=0;
  int val2=0;
  String res='';
  int sum(int a, int b) {
    return (a + b);
  }

  int mul(int a, int b) {
    return (a * b);
  }

  int diff(int a, int b) {
    return (a - b);
  }

  int div(int a, int b) {
    if(b==0){
      print('Enter valid value');
    }
    return (a ~/ b);
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
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Output: $res',
                    style:const TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Enter val1:',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (text){
                      val1 = int.tryParse(text) ?? 0;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Enter val2:',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (text){
                      val2 = int.tryParse(text) ?? 0;
                    },
                  ),
                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: (){
                            setState(() {
                              res = sum(val1, val2).toString();
                            });
                          },
                          child: const Text('+')
                      ),
                      ElevatedButton(
                          onPressed: (){
                            setState(() {
                              res = diff(val1, val2).toString();
                            });
                          },
                          child: const Text('-')
                      ),
                      ElevatedButton(
                          onPressed: (){
                            setState(() {
                              res = mul(val1, val2).toString();
                            });
                          },
                          child: const Text('x')
                      ),
                      ElevatedButton(onPressed:(){
                        setState(() {
                          res = div(val1, val2).toString();
                        });
                      },
                          child: const Text('/')
                      ),
                    ],
                  ),
                ],
              ),

            ),

        ),
    );
  }
}
