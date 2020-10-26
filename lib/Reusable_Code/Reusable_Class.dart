// import 'package:extended_image/extended_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_html/style.dart';
// import 'package:html/parser.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:notify/Components/DefaultAppBar.dart';
// import 'package:notify/Components/DefaultDrawer.dart';
// import 'package:notify/Reusable_Code/ReusableApi.dart';
//
// var api=ReusableApi();
//
// class ReusableClass extends StatelessWidget {
//
//
//
//    final String url;
//
//   ReusableClass({ this.url});
//    @override
//    Widget build(BuildContext context) {
//      return MaterialApp(
//        home: Scaffold(
//          drawer: DefaultDrawer(),
//          appBar: DefaultAppBar(),
//          body: Column(
//            children: [
//              Container(
//                child: FutureBuilder(
//                  future: api.fetchPhones(url),
//                  builder: (context, snapshot) {
//                    if (snapshot.hasData) {
//                      return Container(
//                        height: MediaQuery.of(context).size.height-80,
//                        width: MediaQuery.of(context).size.width,
//                        color: Colors.white,
//                        child: ListView.builder(
//                            itemCount: snapshot.data.length,
//                            itemBuilder: (BuildContext context, int index) {
//                              Map wppost = snapshot.data[index];
//                              var imageurl = wppost['jetpack_featured_media_url'];
//                              return GestureDetector(
//                                onTap: (){
//                                  Navigator.push(
//                                      context,
//                                      MaterialPageRoute(
//                                        builder: (context) => SecondRoute(
//                                            wppost['content']['rendered']),
//                                      ));},
//                                child: Padding(
//                                  padding: const EdgeInsets.only(left:7.0,right:7.0,top: 7,bottom: 7),
//                                  child: Card(
//                                    elevation: 10,
//                                    shape: RoundedRectangleBorder(
//                                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
//                                    color: Colors.white,
//                                    child: Column(
//                                      crossAxisAlignment: CrossAxisAlignment.start,
//                                      children: <Widget>[
//                                        ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20)),child: ExtendedImage.network(imageurl,cache: true,enableMemoryCache: true,cacheHeight:300,cacheWidth: MediaQuery.of(context).size.width.toInt(),),),
//                                        Padding(
//                                          padding: const EdgeInsets.only(
//                                              left: 7, right: 7, top: 2),
//                                          child: Text(
//                                            parse(
//                                              (wppost['title']['rendered'])
//                                                  .toString(),
//                                            ).documentElement.text,
//                                            style: TextStyle(
//                                                fontSize: 23,
//                                                fontWeight: FontWeight.bold,
//                                                color: Colors.black),
//                                          ),
//                                        ),
//                                        Padding(
//                                          padding: const EdgeInsets.only(
//                                              left: 7, right: 7, top: 5),
//                                          child: Text(
//                                            parse(
//                                              (wppost['excerpt']['rendered'])
//                                                  .toString(),
//                                            ).documentElement.text,
//                                            style: TextStyle(
//                                              color: Colors.black,
//                                              fontSize: 15,
//                                            ),
//                                            textAlign: TextAlign.justify,
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ),
//                              );
//                            }),
//                      );
//                    }
//                    return Container(
//                        height: MediaQuery.of(context).size.height - 80,
//                        width: MediaQuery.of(context).size.width,
//                        color: Colors.grey[200],
//                        child: Center(
//                          child: CircularProgressIndicator(),
//                        ));
//                  },
//                ),
//              ),
//            ],
//          ),
//        ),
//      );
//    }
//
//
// }
//
//
//
//
// class SecondRoute extends StatelessWidget {
//   final String _text;
//
//   SecondRoute(this._text);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: DefaultDrawer(),
//       appBar: DefaultAppBar(),
//       body: Container(
//           color: Colors.white,
//           padding: EdgeInsets.only(left: 10,right: 10),
//           child: SingleChildScrollView(
//             child: Html(
//               data: _text,
//               style: {
//                 "html": Style(backgroundColor: Colors.white),
//                 "h3": Style(
//                     color: Colors.grey[800],
//                     fontSize: FontSize(23),
//                     fontWeight: FontWeight.bold),
//                 "p": Style(
//                     color: Colors.grey[800],
//                     fontSize: FontSize(18),
//                     textAlign: TextAlign.justify),
//                 "h4": Style(
//                   color: Colors.red,
//                   fontSize: FontSize(18),
//                 ),
//                 "table": Style(color: Colors.black),
//                 "td": Style(color: Colors.black),
//                 "tr": Style(color: Colors.black),
//                 "tbody": Style(color: Colors.black),
//               },
//             ),
//           )),
//     );
//   }
// }
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';
import 'package:html/parser.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:notify/Components/DefaultAppBar.dart';
import 'package:notify/Components/DefaultDrawer.dart';
import 'package:notify/Reusable_Code/ReusableApi.dart';

var api=ReusableApi();

class ReusableClass extends StatelessWidget {



  final String url;

  ReusableClass({ this.url});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.blue),),
          backgroundColor: Colors.white,
          appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.blue),color:Colors.white,textTheme: TextTheme(headline6: TextStyle(color: Colors.blue,),),actionsIconTheme: IconThemeData(color: Colors.blue))
      ),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
          drawer: DefaultDrawer(),
          appBar: DefaultAppBar(),
          body: Column(
            children: [
              Container(
                child: FutureBuilder(
                  future: api.fetchPhones(url),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        height: MediaQuery.of(context).size.height-80,
                        width: MediaQuery.of(context).size.width,
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
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20)),child: ExtendedImage.network(imageurl,cache: true,enableMemoryCache: true,cacheHeight:300,cacheWidth: MediaQuery.of(context).size.width.toInt(),),),
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
                                               ),
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
                        child: Center(
                          child: CircularProgressIndicator(),
                        ));
                  },
                ),
              ),
            ],
          ),
        ),
    );
  }


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
          padding: EdgeInsets.only(left: 10,right: 10),
          child: SingleChildScrollView(
            child: Html(
              data: _text,
              style: {
                "html": Style(
                    // backgroundColor: Colors.white
                ),
                "h3": Style(
                    // color: Colors.grey[800],
                    fontSize: FontSize(23),
                    fontWeight: FontWeight.bold),
                "p": Style(
                    // color: Colors.grey[800],
                    fontSize: FontSize(18),
                    textAlign: TextAlign.justify),
                "h4": Style(
                  color: Colors.red,
                  fontSize: FontSize(18),
                ),
                "table": Style(
                    // color: Colors.black
                ),
                "td": Style(
                    // color: Colors.black
                ),
                "tr": Style(
                    // color: Colors.black
                ),
                "tbody": Style(
                    // color: Colors.black
                ),
              },
            ),
          )),
    );
  }
}

