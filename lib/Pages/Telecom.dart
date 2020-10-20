import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_html/flutter_html.dart';
import 'package:notify_categories/Components/DefaultAppBar.dart';
import 'package:notify_categories/Components/DefaultDrawer.dart';

String url="https://notifytech.in/wp-json/wp/v2/posts?categories=223&per_page=50";


class Telecom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DefaultDrawer(),
      appBar: DefaultAppBar(),
      body: Column(
        children: [
          Container(
            child: FutureBuilder(
              future: fetchPhones(url),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    height: MediaQuery.of(context).size.height-80,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          Map wppost = snapshot.data[index];
                          var imageurl = wppost['jetpack_featured_media_url'];
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SecondRoute(
                                        wppost['content']['rendered']),
                                  ));},
                            child: Padding(
                              padding: const EdgeInsets.only(left:7.0,right:7.0,top: 7,bottom: 7),
                              child: Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20)),child: ExtendedImage.network(imageurl,cache: true,enableMemoryCache: true,),),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 7, right: 7, top: 2),
                                      child: Text(
                                        parse(
                                          (wppost['title']['rendered'])
                                              .toString(),
                                        ).documentElement.text,
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 7, right: 7, top: 5),
                                      child: Text(
                                        parse(
                                          (wppost['excerpt']['rendered'])
                                              .toString(),
                                        ).documentElement.text,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  );
                }
                return Container(
                    height: MediaQuery.of(context).size.height - 80,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[200],
                    child: Center(
                      child: CircularProgressIndicator(),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}


Future<List> fetchPhones(url)async{
  final response=await http.get(url,headers: {"accept": "application/json"});
  var convertDataToJson=jsonDecode(response.body);
  return convertDataToJson;
}

class SecondRoute extends StatelessWidget {
  final String _text;

  SecondRoute(this._text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DefaultDrawer(),
      appBar: DefaultAppBar(),
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 10,right: 10),
          child: SingleChildScrollView(
            child: Html(
              data: _text,
              style: {
                "html": Style(backgroundColor: Colors.white),
                "h3": Style(
                    color: Colors.grey[800],
                    fontSize: FontSize(23),
                    fontWeight: FontWeight.bold),
                "p": Style(
                    color: Colors.grey[800],
                    fontSize: FontSize(18),
                    textAlign: TextAlign.justify),
                "h4": Style(
                  color: Colors.red,
                  fontSize: FontSize(18),
                ),
                "table": Style(color: Colors.black),
                "td": Style(color: Colors.black),
                "tr": Style(color: Colors.black),
                "tbody": Style(color: Colors.black),
              },
            ),
          )),
    );
  }
}

// class Telecom extends StatelessWidget {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: DefaultAppBar(),
//         drawer: DefaultDrawer(),
//         body: Container(
//           color: Colors.grey[800],
//           child: FutureBuilder(
//               future: fetchPhones(),
//               builder: (context,snapshot){
//                 if(snapshot.hasData){
//                   return ListView.builder(
//                       itemBuilder: (BuildContext context,int index){
//                         Map Posts =snapshot.data[index];
//                         var imageurl=Posts['jetpack_featured_media_url'];
//                         return GestureDetector(
//                           child: Card(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius:
//                                 BorderRadius.all(Radius.circular(20.0))),
//                             color: Colors.grey[850],
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20)),child: ExtendedImage.network(imageurl,cache: true,enableMemoryCache: true,),),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 7, right: 7, top: 2),
//                                   child: Text(
//                                     parse(
//                                       (Posts['title']['rendered'])
//                                           .toString(),
//                                     ).documentElement.text,
//                                     style: TextStyle(
//                                         fontSize: 23,
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.grey[400]),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 7, right: 7, top: 5),
//                                   child: Text(
//                                     parse(
//                                       (Posts['excerpt']['rendered'])
//                                           .toString(),
//                                     ).documentElement.text,
//                                     style: TextStyle(
//                                       color: Colors.grey[400],
//                                       fontSize: 15,
//                                     ),
//                                     textAlign: TextAlign.justify,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                       itemCount: snapshot.data.length);
//                 }
//                 return Center(child: CircularProgressIndicator());
//               }
//           ),),
//       ),
//     );
//   }
//
// }
//
// Future<List> fetchPhones()async{
//   final response=await http.get(url,headers: {"accept": "application/json"});
//   var convertDataToJson=jsonDecode(response.body);
//   return convertDataToJson;
// }
// class SecondRoute extends StatelessWidget {
//   final String _text;
//
//   SecondRoute(this._text);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text("Notify"),
//       ),
//       body: Container(
//           color: Colors.grey[900],
//           child: SingleChildScrollView(
//             child: Html(
//               data: _text,
//               style: {
//                 "html": Style(backgroundColor: Colors.black12),
//                 "h3": Style(
//                     color: Colors.grey[200],
//                     fontSize: FontSize(23),
//                     fontWeight: FontWeight.bold),
//                 "p": Style(
//                     color: Colors.grey[200],
//                     fontSize: FontSize(18),
//                     textAlign: TextAlign.justify),
//                 "h4": Style(
//                   color: Colors.red,
//                   fontSize: FontSize(18),
//                 ),
//                 "table": Style(color: Colors.white70),
//                 "td": Style(color: Colors.white70),
//                 "tr": Style(color: Colors.white70),
//                 "tbody": Style(color: Colors.white70),
//               },
//             ),
//           )),
//     );
//   }
// }



