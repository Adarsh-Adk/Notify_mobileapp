import 'package:flutter/material.dart';
ThemeData LightTheme=ThemeData.light().copyWith(
  primaryColor: Colors.blue,
  accentColor: Colors.black,
  appBarTheme: AppBarTheme(color: Colors.white),
  textTheme: TextTheme(
      title: TextStyle(color: Colors.blue,fontSize: 22),
      headline1: TextStyle(color: Colors.black,fontSize: 23),
      subhead: TextStyle(color: Colors.black,fontSize: 15),
      subtitle: TextStyle(color: Colors.black,fontSize: 18)),
);

ThemeData DarkTheme=ThemeData.dark().copyWith(
  primaryColor: Colors.white,
  accentColor: Colors.black,
  appBarTheme: AppBarTheme(color: Colors.black),
  textTheme: TextTheme(
      title: TextStyle(color: Colors.white,fontSize: 22),
      headline1: TextStyle(color: Colors.white,fontSize: 23),
      subhead: TextStyle(color: Colors.white,fontSize: 15),
      subtitle: TextStyle(color: Colors.white,fontSize: 18))
);