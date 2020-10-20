import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_html/flutter_html.dart';
import 'package:notify_categories/Components/DefaultAppBar.dart';
import 'package:notify_categories/Components/DefaultDrawer.dart';

String url="https://notifytech.in/wp-json/wp/v2/posts?categories=167&per_page=50";
class Explained extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: DefaultAppBar(),
        drawer: DefaultDrawer(),
        body: Container(
          color: Colors.grey[800],
          child: FutureBuilder(
              future: fetchPhones(),
              builder: (context,snapshot){
                if(snapshot.hasData){
                  return ListView.builder(
                      itemBuilder: (BuildContext context,int index){
                        Map Posts =snapshot.data[index];
                        var imageurl=Posts['jetpack_featured_media_url'];
                        return RaisedButton(
                          color: Colors.black,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                            color: Colors.grey[850],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child:Image(image: NetworkImage(imageurl),), height: 260,
                                  width: 405,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 7, right: 7, top: 2),
                                  child: Text(
                                    parse(
                                      (Posts['title']['rendered'])
                                          .toString(),
                                    ).documentElement.text,
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[400]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 7, right: 7, top: 5),
                                  child: Text(
                                    parse(
                                      (Posts['excerpt']['rendered'])
                                          .toString(),
                                    ).documentElement.text,
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SecondRoute(
                                      Posts['content']['rendered']),
                                ));
                          },
                        );
                      },
                      itemCount: snapshot.data.length);
                }
                return Center(child: CircularProgressIndicator());
              }
          ),),
      ),
    );
  }

}

Future<List> fetchPhones()async{
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
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Notify"),
      ),
      body: Container(
          color: Colors.grey[900],
          child: SingleChildScrollView(
            child: Html(
              data: _text,
              style: {
                "html": Style(backgroundColor: Colors.black12),
                "h3": Style(
                    color: Colors.grey[200],
                    fontSize: FontSize(23),
                    fontWeight: FontWeight.bold),
                "p": Style(
                    color: Colors.grey[200],
                    fontSize: FontSize(18),
                    textAlign: TextAlign.justify),
                "h4": Style(
                  color: Colors.red,
                  fontSize: FontSize(18),
                ),
                "table": Style(color: Colors.white70),
                "td": Style(color: Colors.white70),
                "tr": Style(color: Colors.white70),
                "tbody": Style(color: Colors.white70),
              },
            ),
          )),
    );
  }
}



