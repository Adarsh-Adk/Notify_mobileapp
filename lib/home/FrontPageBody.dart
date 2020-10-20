import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_html/flutter_html.dart';


class FrontPageBody extends StatefulWidget {
  @override
  _FrontPageBodyState createState() => _FrontPageBodyState();
}

class _FrontPageBodyState extends State<FrontPageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: FutureBuilder(
            future: fetchWPposts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  height: MediaQuery.of(context).size.height - 158,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[800],
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
                            padding: const EdgeInsets.only(left:10.0,right:10.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              color: Colors.grey[850],
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20)),child: Image(image: NetworkImage(imageurl,),)),
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
                                          color: Colors.grey[400]),
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
                                        color: Colors.grey[400],
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
                  height: MediaQuery.of(context).size.height - 158,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ));
            },
          ),
        ),
      ],
    );
  }
}
var pageNumber = 1;

Future<List> fetchWPposts() async {
  final response = await http.get(
      "https://notifytech.in/wp-json/wp/v2/posts?page=$pageNumber",
      headers: {"accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
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
          padding: EdgeInsets.only(left: 10,right: 10),
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