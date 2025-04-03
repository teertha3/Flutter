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
      title: 'Layout Demo',

      home: Scaffold(
          appBar:AppBar(
            title: Text('Demonstration of UI Layouts'),
          ),
        body: Center(
          child: Container(
              height:250,
              width:250,
              color: Colors.blue,
              child:GridView.count(crossAxisCount: 2,
                 mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children:[
                  Container(
                    color: Colors.red,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.add_circle),
                        Icon(Icons.add_box),
                        Icon(Icons.alarm_add),
                        Icon(Icons.add_call),
                      ],
                    ),

                  ),
                  Container(
                    color:Colors.blue,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.add_circle),
                        Icon(Icons.add_box),
                        Icon(Icons.add_call),
                        Icon(Icons.add_card),

                      ],
                    ),
                  ),
                  Container(
                    color:Colors.green,
                    child:Stack(
                      alignment:Alignment.center,
                      children:[
                        Positioned(
                          top:50,
                          left:50,
                          child: Icon(Icons.add_circle),
                        ),
                        Positioned(
                          top:50,
                          left:100,
                          child: Icon(Icons.add_box),
                        ),
                        Positioned(
                          top:100,
                          left:50,
                          child:  Icon(Icons.add_call),
                        ),
                        Positioned(
                          top:100,
                          left:100,
                          child:  Icon(Icons.add_business),
                        ),



                      ],
                    ),
                  ),
                  Container(
                    color:Colors.yellow,

                  ),
                ],
              ),


          ),
        ),
      ),




    );
  }

}


