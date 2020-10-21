import 'package:flutter/material.dart';
import 'package:notify/Pages/AboutUs.dart';
import 'package:notify/Pages/SocialMedia.dart';
import 'package:notify/Theme/ThemeModel.dart';
import 'package:provider/provider.dart';

import '../categories/Categories_Home.dart';

class DefaultDrawerTesting extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(child: Center(child: Text("Notify",style: TextStyle(color: Colors.blue,fontSize: 30.0),)),decoration: BoxDecoration(color: Colors.white,),),
            Card(elevation: 5,
              child: ListTile(title: Text("Categories",style: TextStyle(fontSize: 20,color: Colors.blue),),onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));},
              ),
            ),
            Card(elevation: 5,
              child: ListTile(title: Text("Social media",style: TextStyle(fontSize: 20,color: Colors.blue),),onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => SocialMedia()));},
              ),
            ),

            Card(elevation: 5,
              child: ListTile(title: Text("About us",style: TextStyle(fontSize: 20,color: Colors.blue),),onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Aboutus()));},
              ),
            ),
            Card(elevation: 5,
              child: ListTile(title: Text("Dark Mode",style: TextStyle(fontSize: 20,color: Colors.blue),),onTap: (){
                Provider.of<ThemeModel>(context).toggleTheme();
              },))

            // Card(elevation: 5,
            //   child: ListTile(title: Text("privacy policy",style: TextStyle(fontSize: 20,color: Colors.blue),),onTap: (){
            //     Navigator.pop(context);
            //     Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicy()));},
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}