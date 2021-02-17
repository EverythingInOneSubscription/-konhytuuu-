import 'package:flutter/material.dart';
import 'package:myvoicemail/greetingPage.dart';
import 'package:myvoicemail/recordingPage.dart';
import 'package:myvoicemail/voicemailPage.dart';

class BottomNavig extends StatefulWidget {
  @override
  _BottomNavigState createState() => _BottomNavigState();
}

class _BottomNavigState extends State<BottomNavig> {
  int _currentIndex = 0;
  final tabs = [
    VoiceMail(),
    Recording(),
    Greeting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: tabs[_currentIndex],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top:0.0),
        child: BottomNavigationBar(

          currentIndex: _currentIndex,
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          //unselectedItemColor: Colors.blue,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[

            BottomNavigationBarItem(

              icon: Icon(
                Icons.mail_outline,
              ),
              label: (''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.mic,
              ),
              label: (''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.library_books,
              ),
              label: (''),
            ),
          ],
          onTap: (index) {

            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
