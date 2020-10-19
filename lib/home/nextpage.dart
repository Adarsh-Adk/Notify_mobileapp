import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'FrontPageBody.dart';


class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
  var pageNumber;
  NextPage(this.pageNumber);

}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notify"),
        backgroundColor: Colors.black,
      ),
      body: Column(
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
                                    child:CachedNetworkImage(imageUrl: imageurl,placeholder: (context,url)=>Image.asset('assets/loading.gif'),fit: BoxFit.fill,),
                                    height: 260,
                                    width: 405,
                                  ),
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
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SecondRoute(
                                        wppost['content']['rendered']),
                                  ));
                            },
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {

                    pageNumber=pageNumber-1;
                    page=page-1;
                    print("pageNumber:$pageNumber");
                    if(page==1){page=page+1;}
                    Navigator.pop(context);

                  });
                }),
            title: Text(
              "Previous page",
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  print("pageNumber before:$pageNumber");
                  pageNumber=pageNumber+1;
                  page=page+1;
                  print("pageNumber after:$pageNumber");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NextPage(pageNumber)));

                }),
            title: Text(
              "Next page",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        backgroundColor: Colors.black,
      ),
    );
  }
}

var page=pageNumber;
Future<List> fetchWPposts() async {
  final response = await http.get(
      "https://notifytech.in/wp-json/wp/v2/posts?page=$page",
      headers: {"accept": "application/json"});
  print("page:$page");
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}