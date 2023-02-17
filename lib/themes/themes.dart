import 'package:flutter/material.dart';

// ignore: camel_case_types
class themes {
  static Color Maincolor = Color.fromARGB(180, 4, 253, 91);
  static Color secondColor = Color.fromARGB(50, 4, 253, 91);
  static Color PikiaColor = Color.fromARGB(255, 232, 254, 226);
  static Color black = Color.fromARGB(255, 194, 190, 190);
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
