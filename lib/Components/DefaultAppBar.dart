import 'package:flutter/material.dart';
import 'package:notify_categories/Components/DefaultDrawer.dart';

class DefaultAppBar extends AppBar{
  DefaultAppBar({Key key})
      :super(title: Text("Notify",style: TextStyle(color: Colors.blue,fontSize: 22),),backgroundColor: Colors.white,elevation:10,leading: Builder(builder:(context)=> IconButton(icon: Icon(Icons.menu,color: Colors.blue),onPressed: () => Scaffold.of(context).openDrawer())));
}


