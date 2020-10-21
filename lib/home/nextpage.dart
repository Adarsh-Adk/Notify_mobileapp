// import 'package:extended_image/extended_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:html/parser.dart';
// import 'package:http/http.dart' as http;
// import 'package:notify_categories/Components/DefaultAppBar.dart';
// import 'package:notify_categories/Components/DefaultDrawer.dart';
// import 'package:simple_gesture_detector/simple_gesture_detector.dart';
// import 'dart:convert';
// import '../main.dart';
// import 'FrontPageBody.dart';
//
//
// class NextPage extends StatefulWidget {
//   @override
//   _NextPageState createState() => _NextPageState();
//   var pageNumber;
//   NextPage(this.pageNumber);
//
// }
//
// class _NextPageState extends State<NextPage> {
//
//   void _onHorizontalSwipe(SwipeDirection direction)
//   {
//     if(direction==SwipeDirection.left){
//
//       pageNumber=pageNumber+1;
//       page=page+1;
//       Navigator.push(context,
//           MaterialPageRoute(
//             builder: (context) => NextPage(pageNumber),
//           ));
//     }
//     else if(direction==SwipeDirection.right){
//       pageNumber=pageNumber-1;
//       page=page-1;
//       print("pageNumber:$pageNumber");
//       if(page==1){page=page+1;}
//       Navigator.pop(context);
//
//     }
//
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: DefaultDrawer(),
//       appBar: DefaultAppBar(),
//       body: Container(
//         child: FutureBuilder(
//           future: fetchWPposts(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return Container(
//                 height: MediaQuery.of(context).size.height - 80,
//                 width: MediaQuery.of(context).size.width,
//                 color: Colors.white,
//                 child: SimpleGestureDetector(
//                   onHorizontalSwipe: _onHorizontalSwipe,
//                   child: ListView.builder(
//                       itemCount: snapshot.data.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         Map wppost = snapshot.data[index];
//                         var imageurl = wppost['jetpack_featured_media_url'];
//                         return GestureDetector(
//                           onTap: (){Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => SecondRoute(
//                                     wppost['content']['rendered']),
//                               ));},
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 10,right: 10),
//                             child: Card(
//                               shape: RoundedRectangleBorder(
//                                   borderRadius:
//                                   BorderRadius.all(Radius.circular(20.0))),
//                               color: Colors.white,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: <Widget>[
//                                   ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20)),child:ExtendedImage.network(imageurl,cache: true,enableMemoryCache: true,),),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 7, right: 7, top: 2),
//                                     child: Text(
//                                       parse(
//                                         (wppost['title']['rendered'])
//                                             .toString(),
//                                       ).documentElement.text,
//                                       style: TextStyle(
//                                           fontSize: 23,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.black),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 7, right: 7, top: 5),
//                                     child: Text(
//                                       parse(
//                                         (wppost['excerpt']['rendered'])
//                                             .toString(),
//                                       ).documentElement.text,
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 15,
//                                       ),
//                                       textAlign: TextAlign.justify,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         );
//                       }),
//                 ),
//               );
//             }
//             return Container(
//                 height: MediaQuery.of(context).size.height - 80,
//                 width: MediaQuery.of(context).size.width,
//                 child: Center(
//                   child: CircularProgressIndicator(),
//                 ));
//           },
//         ),
//       ),
//     );
//   }
// }
//
// var page=pageNumber;
// Future<List> fetchWPposts() async {
//   final response = await http.get(
//       "https://notifytech.in/wp-json/wp/v2/posts?page=$page",
//       headers: {"accept": "application/json"});
//   print("page:$page");
//   var convertDatatoJson = jsonDecode(response.body);
//   return convertDatatoJson;
// }