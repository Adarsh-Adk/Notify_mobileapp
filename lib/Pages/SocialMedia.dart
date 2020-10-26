// import 'package:flutter/material.dart';
// import 'package:notify/Components/DefaultAppBar.dart';
// import 'package:notify/Components/DefaultDrawer.dart';
// import 'package:url_launcher/url_launcher.dart';
//
//
// String facebookurl ="https://www.facebook.com/notifymalayalam";
// String instagramurl="https://www.instagram.com/notify_tech/";
// String youtubeurl="https://www.youtube.com/channel/UCaX3dVR6qswYrf7HBa7GSLA";
//
//
// class SocialMedia extends StatefulWidget {
//
//   @override
//   _State createState() => _State();
// }
//
// class _State extends State<SocialMedia> {
//   Future<void> _launched;
//   Future<void> _launchUniversalLinkIos(String url) async {
//     if (await canLaunch(url)) {
//       final bool nativeAppLaunchSucceeded = await launch(
//         url,
//         forceSafariVC: false,
//         universalLinksOnly: true,
//       );
//       if (!nativeAppLaunchSucceeded) {
//         await launch(url, forceSafariVC: true);
//       }
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: DefaultDrawer(),
//       appBar: DefaultAppBar(),
//       body: Container(
//         color: Colors.white,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               GestureDetector(onTap:(){setState(() {
//                 _launched = _launchUniversalLinkIos(facebookurl);
//                 });} ,child: Container(padding:EdgeInsets.only(bottom:10 ),height: 150,width: 150,child: Card(color: Colors.blue,elevation: 10,child: Center(child: Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 20),)),))),
//               GestureDetector(onTap: (){setState(() {
//                 _launched = _launchUniversalLinkIos(instagramurl);
//                 });},child: Container(padding:EdgeInsets.only(bottom:10 ),height: 150,width: 150,child: Card(color: Colors.blue,elevation: 10,child: Center(child: Text("Instagram",style: TextStyle(color: Colors.white,fontSize: 20),)),))),
//               GestureDetector(onTap: (){
//                 _launched = _launchUniversalLinkIos(youtubeurl);
//                  },child: Container(padding:EdgeInsets.only(bottom:10 ),height: 150,width: 150,child: Card(color: Colors.blue,elevation: 10,child: Center(child: Text("Youtube",style: TextStyle(color: Colors.white,fontSize: 20),)),))),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
import 'package:flutter/material.dart';
import 'package:notify/Components/DefaultAppBar.dart';
import 'package:notify/Components/DefaultDrawer.dart';
import 'package:url_launcher/url_launcher.dart';


String facebookurl ="https://www.facebook.com/notifymalayalam";
String instagramurl="https://www.instagram.com/notify_tech/";
String youtubeurl="https://www.youtube.com/channel/UCaX3dVR6qswYrf7HBa7GSLA";


class SocialMedia extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<SocialMedia> {
  Future<void> _launched;
  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(url, forceSafariVC: true);
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(headline4:TextStyle(color: Colors.blue),bodyText1:TextStyle(color: Colors.blue),headline6: TextStyle(color: Colors.blue),bodyText2: TextStyle(color: Colors.blue) ),
          backgroundColor: Colors.white,
          appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.blue),color:Colors.white,textTheme: TextTheme(headline6: TextStyle(color: Colors.blue,),),)
      ),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        drawer: DefaultDrawer(),
        appBar: DefaultAppBar(),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(onTap:(){setState(() {
                  _launched = _launchUniversalLinkIos(facebookurl);
                  });} ,child: Container(padding:EdgeInsets.only(bottom:10 ),height: 150,width: 150,child: Card(elevation: 10,child: Center(child: Text("Facebook",style: TextStyle(fontSize: 20),)),))),
                GestureDetector(onTap: (){setState(() {
                  _launched = _launchUniversalLinkIos(instagramurl);
                  });},child: Container(padding:EdgeInsets.only(bottom:10 ),height: 150,width: 150,child: Card(elevation: 10,child: Center(child: Text("Instagram",style: TextStyle(fontSize: 20),)),))),
                GestureDetector(onTap: (){
                  _launched = _launchUniversalLinkIos(youtubeurl);
                  },child: Container(padding:EdgeInsets.only(bottom:10 ),height: 150,width: 150,child: Card(elevation: 10,child: Center(child: Text("Youtube",style: TextStyle(fontSize: 20),)),))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}







