import 'package:flutter/material.dart';
import 'package:notify/Components/DefaultAppBar.dart';
import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/Components/DefaultDrawer.dart';
import 'package:notify/categories/categories_list.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.blue),bodyText2: TextStyle(color: Colors.blue)),
          appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.blue),color:Colors.white,textTheme: TextTheme(headline6: TextStyle(color: Colors.blue,),),)
      ),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: DefaultDrawer(),
        appBar: DefaultAppBar(),
        body: Container(
            // color: Colors.white,
          child: CategoriesList()
        ),
      ),

    );
  }
}
// Center(child: Text("categories page",style:TextStyle(color: Colors.grey[300],fontSize: 40.0),),),
