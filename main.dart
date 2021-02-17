import 'package:flutter/material.dart';
import 'package:myvoicemail/LoginPagePNo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myVoiceMail',
      home: Scaffold(
        body: LoginPageNumber(),
      ),
    );
  }
}
