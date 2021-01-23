import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Whatsapphome.dart';

void main() => runApp(new Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      home: new Whatsapphome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
