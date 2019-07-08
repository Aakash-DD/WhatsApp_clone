import 'package:flutter/material.dart';

import 'pages/camera_screen.dart';
import 'pages/chat_screen.dart';
import 'pages/status_screen.dart';
import 'package:whatsapp_camera/pages/call_screen.dart';



class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState(){
    //TODO implementation intiState
    super.initState();
    _tabController = new TabController(initialIndex: 1,length: 4, vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white70,
          tabs: <Widget>[
            new Tab(icon: new  Icon(Icons.camera_alt),),
            new Tab(text:"CHATS",),
            new Tab(text: "STATUS",),
            new Tab(text: "CALLS",),

          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more_vert),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],

      ),
      floatingActionButton: new FloatingActionButton(
        //backgroundColor: Colors.greenAccent,
          backgroundColor : Theme.of(context).accentColor,
          child: new Icon(Icons.message,color: Colors.white,),
          onPressed: ()=>print("Done man!!")),
    );
  }
}















