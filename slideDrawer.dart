import 'package:flutter/material.dart';
import 'package:myvoicemail/greetingPage.dart';
import 'package:myvoicemail/recordingPage.dart';
import 'package:myvoicemail/voicemailPage.dart';
import 'LoginPagePNo.dart';

class SlideDrawer extends StatefulWidget {
  @override
  _SlideDrawerState createState() => _SlideDrawerState();
}

class _SlideDrawerState extends State<SlideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Container(
        color: Colors.red[900],
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red[100],
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      child: Center(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft:  const  Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                          color:Colors.pinkAccent ,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Voice Mail',
                              style: TextStyle(
                                letterSpacing: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      child:Image.asset('assets/menu-img.png',
                        width: 80,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.mail_outline,
                color: Colors.white,
              ),
              title: Text('Voice Mail',
                style: TextStyle(
                  color: Colors.white,
                ),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VoiceMail()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.mic,
                color: Colors.white,),
              title: Text('Recording',style: TextStyle(
                color: Colors.white,
              ),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Recording()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.library_books,
                color: Colors.white,),
              title: Text('Greetings',style: TextStyle(
                color: Colors.white,
              ),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Greeting()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app,
                color: Colors.white,),
              title: Text('Logout',style: TextStyle(
                color: Colors.white,
              ),), onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LoginPageNumber(),),
              );
            }
            ),
          ],
        ),
      ),
    );
  }
}
