import 'package:flutter/material.dart';
import 'BottomNavig.dart';

class otpVerifyPage extends StatefulWidget {
  @override
  _otpVerifyPageState createState() => _otpVerifyPageState();
}

class _otpVerifyPageState extends State<otpVerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                child: Expanded(
                    child: Image.asset('assets/bg.png',
                      width:1000 ,
                      height: 1000,
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                            padding: const EdgeInsets.all(17.0),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child:Image.asset('assets/round-images.png',
                        width: 200,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container
                      (
                      child: TextField(
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.white,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                            ),
                            icon:Icon(Icons.confirmation_number,
                              color: Colors.white,
                            ),
                            labelText: 'Access Code',
                            labelStyle: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child:Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:RaisedButton(
                            color: Colors.pinkAccent,
                            onPressed: () {

                            },
                            child: Text(
                              'RESEND',style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 5,
                            ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ) ,
                      ),
                      Expanded(
                        child:Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:RaisedButton(
                            color: Colors.pinkAccent,
                            onPressed: () {

                            },
                            child: Text(
                              'RESET',style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 5,

                            ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ) ,
                      ),
                    ],
                  ),
                  Container(
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>BottomNavig(),),
                        );
                      },
                      child:Text(
                        'VERIFY',style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 5,

                      ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Colors.blue),
                      ),
                    ),
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
