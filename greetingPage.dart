import 'package:flutter/material.dart';

import 'slideDrawer.dart';
class Greeting extends StatefulWidget {
  @override
  _GreetingState createState() => _GreetingState();
}

class _GreetingState extends State<Greeting> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[300],
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          title: Center(child: Text('GREETING'),),
        ),
        drawer: SlideDrawer(),
        body: Container(

            child: ListView(

              children: [
                GreetingMessage(),
                GreetingMessage(),
                GreetingMessage(),
                GreetingMessage(),
                GreetingMessage(),
                GreetingMessage(),
                GreetingMessage(),
                GreetingMessage(),
                GreetingMessage(),
                GreetingMessage(),
                GreetingMessage(),
              ],
            ),
        ),
      ),
    );
  }
}
class GreetingMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Message',style: TextStyle(
          fontWeight: FontWeight.bold,

        ),),
        trailing:
        Icon(Icons.more_vert,
          color: Colors.brown,
        ),
        onTap: (){
          print('ejk');
        },


      ),
    );
  }
}
