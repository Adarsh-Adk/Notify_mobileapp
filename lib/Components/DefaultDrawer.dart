import 'package:flutter/material.dart';

import '../categories/Categories_Home.dart';

class DefaultDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
        color: Colors.black87,
          child: ListView(
              children: [
              DrawerHeader(child: Center(child: Text("Notify",style: TextStyle(color: Colors.white,fontSize: 30.0),)),decoration: BoxDecoration(color: Colors.black26),),
                    Card(
                        child: ListTile(title: Text("Categories",style: TextStyle(fontSize: 20),),onTap: (){
                          Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));},),),
                    Card(
                         child: ListTile(title: Text("Social media",style: TextStyle(fontSize: 20),),onTap: (){
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));},
                         ),
          ),
                    Card(
                      child: ListTile(title: Text("About us",style: TextStyle(fontSize: 20),),onTap: (){
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));},
                      ),
          ),
        ],
      ),
    ),
    );
  }
}