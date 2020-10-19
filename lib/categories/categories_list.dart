import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
      child: GestureDetector(onTap: ()=>Fluttertoast.showToast(
          msg: "This functionality will be added later Toast",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,),
        child: GridView.count(
          crossAxisCount: 2,
          children:[
           Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)), margin:EdgeInsets.all(7),child: Container(child: Center(child: Text("Phones",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),),),
            Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Laptops",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),),),
            Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Apps",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),),),
            Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("How To",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),),),
            Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Explained",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),),),
            Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Processors",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),),),
            Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Tabs",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),),),
            Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Consoles",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),),),
            Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Peripherals",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),),),
            Card(elevation: 10.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),margin:EdgeInsets.all(7), child: Container(child: Center(child: Text("Telecom",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),),),
          ]),
      ),
    );
  }
}
