// import 'package:flutter/material.dart';
// import 'package:notify/Pages/AboutUs.dart';
// import 'package:notify/Pages/SocialMedia.dart';
// import '../categories/Categories_Home.dart';
//
// class DefaultDrawer extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//         child: Container(
//         color: Colors.white,
//           child: ListView(
//               children: [
//               DrawerHeader(child: Center(child: Text("Notify",style: TextStyle(color: Colors.blue,fontSize: 30.0),)),decoration: BoxDecoration(color: Colors.white,),),
//                     Card(elevation: 5,
//                         child: ListTile(title: Text("Categories",style: TextStyle(fontSize: 20,color: Colors.blue),),onTap: (){
//                           Navigator.pop(context);
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));},
//                         ),
//                     ),
//                     Card(elevation: 5,
//                          child: ListTile(title: Text("Social media",style: TextStyle(fontSize: 20,color: Colors.blue),),onTap: (){
//                           Navigator.pop(context);
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => SocialMedia()));},
//                          ),
//                     ),
//
//                     Card(elevation: 5,
//                       child: ListTile(title: Text("About us",style: TextStyle(fontSize: 20,color: Colors.blue),),onTap: (){
//                         Navigator.pop(context);
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => Aboutus()));},
//                       ),
//                     ),
//         ],
//       ),
//     ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:notify/Pages/AboutUs.dart';
import 'package:notify/Pages/SocialMedia.dart';
import '../categories/Categories_Home.dart';

class DefaultDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(

        child: ListView(
          children: [
            DrawerHeader(child: Center(child: Text("Notify",style: TextStyle(fontSize: 30.0,),)),decoration: BoxDecoration(),),
            Card(elevation: 5,
              child: ListTile(title: Text("Categories",style: TextStyle(fontSize: 20),),onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));},
              ),
            ),
            Card(elevation: 5,
              child: ListTile(title: Text("Social media",style: TextStyle(fontSize: 20,),),onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => SocialMedia()));},
              ),
            ),

            Card(elevation: 5,
              child: ListTile(title: Text("About us",style: TextStyle(fontSize: 20,),),onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Aboutus()));},
              ),
            ),
          ],
        ),
      ),
    );
  }
}