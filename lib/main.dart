// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:notify/Components/DefaultAppBar.dart';
// import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/Components/DefaultDrawer.dart';
// import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/home/FrontPageBody.dart';
// import 'package:notify/home/ApiServiceProvider.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';
//
//
//  int pageNumber=1;
//  var api=ApiServiceProvider();
//
//
//
//
//
// void main() => runApp(NotifyApp());
//
// class NotifyApp extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//         title: "Notify", debugShowCheckedModeBanner: false, home: HomePage());
//   }
// }
//
// class HomePage extends StatefulWidget {
//
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
//
// class _HomePageState extends State<HomePage> {
//
//
//
//
//
//   var file =ApiServiceProvider();
//
//   Future<void>_onDoubleTap() async{
//     String fileName="posts.json";
//     var diretory= await getTemporaryDirectory();
//     File file= File(diretory.path+"/"+fileName);
//     if(file.existsSync()){ file.deleteSync(recursive: true);}
//     else{
//       // print(
//       //     "file is already deleted");
//     }
//     // print("file is deleted");
//     api.fetchWPposts();
//   }
//
//
//
//   @override
//   void initState() {
//     super.initState();
//     api.fetchWPposts();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//
//
//
//     return  RefreshIndicator(onRefresh: _onDoubleTap,
//         child: Scaffold(
//             drawer: DefaultDrawer(),
//             appBar:DefaultAppBar(),
//             body: FrontPageBody(),
//         ),
//       );
//   }
// }
//
//
//
//
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notify/Components/DefaultAppBar.dart';
import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/Components/DefaultDrawer.dart';
import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/home/FrontPageBody.dart';
import 'package:notify/home/ApiServiceProvider.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';


int pageNumber=1;
var api=ApiServiceProvider();





void main() => runApp(NotifyApp());

class NotifyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(headline4:TextStyle(color: Colors.blue),bodyText1:TextStyle(color: Colors.blue),headline6: TextStyle(color: Colors.blue) ),
          backgroundColor: Colors.white,
          appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.blue),color:Colors.white,textTheme: TextTheme(headline6: TextStyle(color: Colors.blue,),),)
      ),
        darkTheme: ThemeData.dark(),
        title: "Notify", debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {





  var file =ApiServiceProvider();

  Future<void>_onDoubleTap() async{
    String fileName="posts.json";
    var diretory= await getTemporaryDirectory();
    File file= File(diretory.path+"/"+fileName);
    if(file.existsSync()){ file.deleteSync(recursive: true);}
    else{
      // print(
      //     "file is already deleted");
    }
    // print("file is deleted");
    api.fetchWPposts();
  }



  @override
  void initState() {
    super.initState();
    api.fetchWPposts();
  }


  @override
  Widget build(BuildContext context) {



    return  RefreshIndicator(onRefresh: _onDoubleTap,
      child: Scaffold(
        drawer: DefaultDrawer(),
        appBar:DefaultAppBar(),
        body: FrontPageBody(),
      ),
    );
  }
}






