import 'package:flutter/material.dart';
import 'package:pikia/Editorial%20pages/page1.dart';
import 'package:pikia/Editorial%20pages/page2.dart';
import 'package:pikia/Editorial%20pages/page3.dart';
import 'package:pikia/homePages/pikia/reciclingWedgit/plasticPage.dart';
import 'package:pikia/loginPages/LoginPage.dart';
import 'package:pikia/themes/themes.dart';

import 'homePages/homePage.dart';
import 'loginPages/SaveAcountPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: themes.Maincolor,
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: themes.black),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
          ),
          textTheme: TextTheme(
              headline6: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: themes.Maincolor),
              subtitle1: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              subtitle2: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,color: themes.Maincolor
              ),
              headline5: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              )),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: themes.black,
              unselectedItemColor: themes.white)),
      title: 'Flutter Demo',
      initialRoute: Page1.routename,
      routes: {
        Page1.routename: (context) => Page1(),
        page2.routename: (context) => page2(),
        Page3.routename: (context) => Page3(),
        SaveAcountPage.routename: (context) => SaveAcountPage(),
        homePage.routename: (context) => homePage(),
        LoginPage.routename: (context) => LoginPage(),
        PlasticPage.routename: (context) => PlasticPage(),
      },
    );
  }
}
