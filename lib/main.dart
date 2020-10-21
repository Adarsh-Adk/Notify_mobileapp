// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:notify_categories/Components/DefaultAppBar.dart';
// import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/Components/DefaultDrawer.dart';
// import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/home/BottomNavBar.dart';
// import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/home/FrontPageBody.dart';
//
//
// void main() => runApp(NotifyApp());
//
// class NotifyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: "Notify", debugShowCheckedModeBanner: false, home: HomePage());
//   }
// }
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: DefaultDrawer(),
//         appBar:DefaultAppBar(),
//         body: FrontPageBody(),
//         bottomNavigationBar:BottomNavBar()
//     );
//   }
// }
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:notify_categories/Components/DefaultAppBar.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';
import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/Components/DefaultDrawer.dart';
import 'file:///C:/Users/GHOST/AndroidStudioProjects/notify_categories/lib/home/FrontPageBody.dart';
import 'home/nextpage.dart';

 int pageNumber=1;


void main() => runApp(NotifyApp());

class NotifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Notify", debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  // void _onHorizontalSwipe(SwipeDirection direction)
  // {
  //   if(direction==SwipeDirection.left){
  //
  //       pageNumber=pageNumber+1;
  //       Navigator.push(context,
  //           MaterialPageRoute(
  //           builder: (context) => NextPage(pageNumber),
  //   ));
  //   }
  //   else if(direction==SwipeDirection.right){
  //     Fluttertoast.showToast(
  //         msg: "Swipe right to go to next page",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Colors.black,
  //         textColor: Colors.blue,
  //         fontSize: 16.0);
  //
  //   }
  //
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        drawer: DefaultDrawer(),
        appBar:DefaultAppBar(),
        body: FrontPageBody(),
    );
  }
}




