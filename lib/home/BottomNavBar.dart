import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'FrontPageBody.dart';
import '../main.dart';
import 'nextpage.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.grey,),
              onPressed: null,
            ),title:Text(
            "Previous page",
            style: TextStyle(color: Colors.grey),
          ), ),

          BottomNavigationBarItem(
            icon:IconButton(icon: Icon(Icons.arrow_forward_ios),color: Colors.black,
              onPressed: () {
                pageNumber=pageNumber+1;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NextPage(pageNumber
                      ),
                    ));
              },
            ),title: Text(
            "Next page",
            style: TextStyle(color: Colors.black),

          ),)]

    );
  }
}
