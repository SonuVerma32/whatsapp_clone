import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/callscr.dart';
import 'package:whatsapp_clone/pages/camerascr.dart';
import 'package:whatsapp_clone/pages/chatscr.dart';
import 'package:whatsapp_clone/pages/statusscr.dart';
class Whatsapphome extends StatefulWidget {
  @override
  _WhatsapphomeState createState() => _WhatsapphomeState();
}

class _WhatsapphomeState extends State<Whatsapphome> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this,initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.4,
        bottom: new TabBar(
            controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS"),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),new Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0) ),
          new Icon(Icons.more_vert)

        ],
      ),
    body: new TabBarView(
      controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatsScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
    ),
      floatingActionButton: new FloatingActionButton(
        onPressed: ()=> print("Button Pressed"),
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message,color: Colors.white,),
      ),
    );
  }
}
