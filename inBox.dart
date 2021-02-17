import 'package:flutter/material.dart';
class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          color: Colors.red[300],
          child: ListView(
            children: [
             InboxPage(),
              InboxPage(),
              InboxPage(),
              InboxPage(),
              InboxPage(),
              InboxPage(),
              InboxPage(),
              InboxPage(),
              InboxPage(),
              InboxPage(),
              InboxPage(),
              InboxPage(),
              InboxPage(),
              InboxPage(),
              InboxPage(),
            ],
          ),
        ),
      ),
    );
  }
}
class InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListTile(
        leading: Icon(Icons.message),
        title: Text('Person'),
        trailing: Icon(Icons.more_vert,
          color: Colors.brown,),
        onTap: (null),
      ),
    );
  }
}



