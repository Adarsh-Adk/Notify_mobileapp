import 'package:flutter/material.dart';
import 'package:notify_categories/Components/DefaultAppBar.dart';
import 'package:notify_categories/Components/DefaultDrawer.dart';

class Aboutus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DefaultDrawer(),
      appBar: DefaultAppBar(),
      body: Container(
        color: Colors.white,
        child: Center(
          child:Container(
            height:300,
            width:300,
            child: Card(
              elevation: 7,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Center(child: Text("About US",style: TextStyle(fontSize: 30,color: Colors.blue,decoration: TextDecoration.underline),softWrap: true,)),
                     Center(child: Padding(
                       padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
                       child: Text(" We are bunch of tech enthusiasts and and our mission is to bring latest technology news to the public and make common people aware changes happening in technology field day by day.",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.blue),textAlign: TextAlign.justify,softWrap: true,),
                     )),
                ],
              )),
            ),
          )
        ),
      ),
    );
  }
}
