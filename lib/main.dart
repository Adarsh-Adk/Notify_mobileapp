import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notify_categories/Components/DefaultAppBar.dart';
import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/Components/DefaultDrawer.dart';
import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/home/BottomNavBar.dart';
import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/home/FrontPageBody.dart';


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
      drawer: DefaultDrawer(),
        appBar:DefaultAppBar(),
        body: FrontPageBody(),
        bottomNavigationBar:BottomNavBar()
    );
  }
}