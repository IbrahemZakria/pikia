import 'package:flutter/material.dart';

// ignore: camel_case_types
class themes {
  static Color Maincolor = Color.fromRGBO(1, 114, 13, 1);
  static Color appbarColor = Color.fromARGB(255, 37, 180, 51);
  static Color goldMainColor = const Color.fromRGBO(216, 179, 31, 1);
  static Color black = Color.fromRGBO(36, 36, 36, 1);
  static Color white = Colors.white;

  static final ThemeData lightmode = ThemeData(
      primaryColor: themes.Maincolor,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: themes.black),
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: TextTheme(
          headline6: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          subtitle2: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: themes.black, unselectedItemColor: themes.white));
}
