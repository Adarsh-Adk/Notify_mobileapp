// import 'package:flutter/material.dart';
// import 'package:notify/Components/DefaultAppBar.dart';
// import 'package:notify/Components/DefaultDrawer.dart';
//
// final String theText =" \"We are bunch of tech enthusiasts and and our "
//     "mission is to bring latest technology news to the public and make common people "
//     "aware of changes happening in technology field day by day.\"";
//
// class Aboutus extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: DefaultDrawer(),
//       appBar: DefaultAppBar(),
//       body: Container(
//         color: Colors.white,
//         child: Center(
//           child:Container(
//             height:300,
//             width:300,
//             child: Card(
//               elevation: 7,
//               child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                      Center(child: Text("About US",style: TextStyle(fontSize: 30,color: Colors.blue,decoration: TextDecoration.underline),softWrap: true,)),
//                      Center(child: Padding(
//                        padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
//                        child: Text(theText,style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.blue),textAlign: TextAlign.justify,softWrap: true,),
//                      )),
//                 ],
//               )),
//             ),
//           )
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:notify/Components/DefaultAppBar.dart';
import 'package:notify/Components/DefaultDrawer.dart';

final String theText =" \"We are bunch of tech enthusiasts and and our "
    "mission is to bring latest technology news to the public and make common people "
    "aware of changes happening in technology field day by day.\"";

class Aboutus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(
        textTheme: TextTheme(headline4:TextStyle(color: Colors.blue),bodyText1:TextStyle(color: Colors.blue),bodyText2: TextStyle(color: Colors.blue) ),
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.blue),color:Colors.white,textTheme: TextTheme(headline6: TextStyle(color: Colors.blue,),),)
    ),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        drawer: DefaultDrawer(),
        appBar: DefaultAppBar(),
        body: Container(
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
                          Center(child: Text("About US",style: TextStyle(fontSize: 30,decoration: TextDecoration.underline),softWrap: true,)),
                          Center(child: Padding(
                            padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
                            child: Text(theText,style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,),textAlign: TextAlign.justify,softWrap: true,),
                          )),
                        ],
                      )),
                ),
              )
          ),
        ),
      ),
    );
  }
}

