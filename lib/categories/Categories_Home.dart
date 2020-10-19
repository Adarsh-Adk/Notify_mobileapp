import 'package:flutter/material.dart';
import 'package:notify_categories/categories/categories_list.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        appBar: AppBar(title: Text("Notify"),backgroundColor: Colors.black87,),
        body: Container(color: Colors.grey[300],
          child: CategoriesList()
        ),
      ),

    );;
  }
}
// Center(child: Text("categories page",style:TextStyle(color: Colors.grey[300],fontSize: 40.0),),),
