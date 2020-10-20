import 'package:flutter/material.dart';
import 'package:notify_categories/CategoryPages/Apps.dart';
import 'package:notify_categories/CategoryPages/Consoles.dart';
import 'package:notify_categories/CategoryPages/Explained.dart';
import 'package:notify_categories/CategoryPages/HowTo.dart';
import 'package:notify_categories/CategoryPages/Laptops.dart';
import 'package:notify_categories/CategoryPages/Peripherals.dart';
import 'package:notify_categories/CategoryPages/Phones.dart';
import 'package:notify_categories/CategoryPages/Processors.dart';
import 'package:notify_categories/CategoryPages/Tabs.dart';
import 'package:notify_categories/CategoryPages/Telecom.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
      child: GridView.count(
        crossAxisCount: 2,
        children:[
          GestureDetector(onTap:(){Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (context)=>Phones()));},child: Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)), margin:EdgeInsets.all(7),child: Container(child: Center(child: Text("Phones",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),),),)),
          GestureDetector(onTap:(){Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (context)=>Laptops()));},child: Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Laptops",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),),),)),
          GestureDetector(onTap:(){Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (context)=>Apps()));},child: Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Apps",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),),),)),
          GestureDetector(onTap:(){Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (context)=>HowTo()));},child: Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("How To",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),),),)),
          GestureDetector(onTap:(){Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (context)=>Explained()));},child: Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Explained",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),),),)),
          GestureDetector(onTap:(){Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (context)=>Processors()));},child: Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Processors",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),),),)),
          GestureDetector(onTap:(){Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (context)=>Tabs()));},child: Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Tabs",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),),),)),
          GestureDetector(onTap:(){Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (context)=>Consoles()));},child: Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Consoles",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),),),)),
          GestureDetector(onTap:(){Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (context)=>Peripherals()));},child: Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Peripherals",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),),),)),
          GestureDetector(onTap:(){Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (context)=>Telecom()));},child: Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Telecom",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),),),)),
        ]),
    );
  }
}
