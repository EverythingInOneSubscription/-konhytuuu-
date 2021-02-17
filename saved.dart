import 'package:flutter/material.dart';
class Saved extends StatefulWidget {
  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.red[300],
        child: ListView(
          children: [
            SavedMessage(),
            SavedMessage(),
            SavedMessage(),
            SavedMessage(),
            SavedMessage(),
            SavedMessage(),
            SavedMessage(),
            SavedMessage(),
            SavedMessage(),
            SavedMessage(),
            SavedMessage(),
            SavedMessage(),
            SavedMessage(),
            SavedMessage(),
            SavedMessage(),


          ],
        ),
      ),
    );
  }
}
class SavedMessage extends StatelessWidget {
  var time=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        title: Text('Mbl Number',style: TextStyle(
          fontWeight: FontWeight.bold,

        ),),
        subtitle: Text(
          '$time',
        ),
        trailing: Icon(Icons.more_vert,
          color: Colors.brown,),
        onTap: (null),

      ),

    );
  }
}
