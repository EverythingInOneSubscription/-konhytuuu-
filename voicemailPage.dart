import 'package:flutter/material.dart';
import 'inBox.dart';
import 'saved.dart';
import 'slideDrawer.dart';

class VoiceMail extends StatefulWidget {
  @override
  _VoiceMailState createState() => _VoiceMailState();
}

class _VoiceMailState extends State<VoiceMail>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          title: Center(
            child: Text('VOICE MAIL'),
          ),
          elevation: 0.7,
          bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.lightBlue,
            tabs: <Widget>[
              Tab(
                child: Text('Inbox'),
              ),
              Tab(
                text: 'Saved',
              ),
            ],
          ),
        ),
        drawer: SlideDrawer(),
        body: SafeArea(
          child: new TabBarView(
            controller: _tabController,
            children: <Widget>[
              new Inbox(),
              new Saved(),
            ],
          ),
        ),
      ),
    );
  }
}
