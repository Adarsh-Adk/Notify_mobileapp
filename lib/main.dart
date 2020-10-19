import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notify_beta3/BottomNavigationBarMain.dart';
import 'package:notify_beta3/FrontPageBody.dart';


void main() => runApp(NotifyApp());

class NotifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Notify", debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notify"),
        backgroundColor: Colors.black,
      ),
      body: FrontPageBody(),
      bottomNavigationBar:BottomNavBar()
    );
  }
}

