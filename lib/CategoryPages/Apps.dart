import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notify/Reusable_Code/Reusable_Class.dart';

String url="https://notifytech.in/wp-json/wp/v2/posts?categories=95&per_page=50";



class Apps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ReusableClass(url: url);
  }
}








