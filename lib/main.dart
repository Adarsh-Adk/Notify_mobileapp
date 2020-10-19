import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/home/BottomNavBar.dart';
import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/home/FrontPageBody.dart';

import 'categories/Categories_Home.dart';


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
      drawer: Drawer(
        child: Container(
          color: Colors.black87,
          child: ListView(
            children: [
              DrawerHeader(child: Center(child: Text("Notify",style: TextStyle(color: Colors.white,fontSize: 30.0),)),decoration: BoxDecoration(color: Colors.black26),),
              Card(
                child: ListTile(title: Text("Categories",style: TextStyle(fontSize: 20),),onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));
                },),
              ),
              Card(
                child: ListTile(title: Text("Social media",style: TextStyle(fontSize: 20),),onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));
                },),
              ),
              Card(
                child: ListTile(title: Text("About us",style: TextStyle(fontSize: 20),),onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));
                },),
              ),
            ],
          ),
        ),
      ),
        appBar: AppBar(
          title: Text("Notify"),
          backgroundColor: Colors.black,
        ),
        body: FrontPageBody(),
        bottomNavigationBar:BottomNavBar()
    );
  }
}