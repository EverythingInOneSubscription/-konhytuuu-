import 'package:flutter/material.dart';
import 'slideDrawer.dart';

class Recording extends StatefulWidget {
  @override
  _RecordingState createState() => _RecordingState();
}

class _RecordingState extends State<Recording> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[200],
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          title: Center(
            child: Text('RECORDING'),
          ),
        ),
        drawer: SlideDrawer(),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Card(
                    color: Colors.pink[100],
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.mic_none,
                                size: 200,
                                color: Colors.pink[300],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '00:00   (Max: 25 Sec)',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Expanded(
                                  child: CircleAvatar(
                                    child: IconButton(
                                      icon: Icon(Icons.play_circle_filled),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Expanded(
                                  child: CircleAvatar(
                                    child: IconButton(
                                      icon: Icon(Icons.stop),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Expanded(
                                  child: CircleAvatar(
                                    child: IconButton(
                                      icon: Icon(Icons.save),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: TextField(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              cursorColor: Colors.red[700],
                              decoration: new InputDecoration(
                                hintText: 'Greeting Text',
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
