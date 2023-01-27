import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/homePages/pikia/PikiaPage.dart';
import 'package:pikia/homePages/personalPage.dart';
import 'package:pikia/homePages/waletPage.dart';
import 'package:pikia/themes/themes.dart';

class homePage extends StatefulWidget {
  static String routename = 'homePage';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<Widget> pages = [
    waletPage(),
    PikiaPage(),
    personalPage(),
  ];
  int curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: themes.Maincolor,
          unselectedItemColor: Colors.black,
          iconSize: MediaQuery.of(context).size.width * .09,
          backgroundColor: Colors.white,
          currentIndex: curentIndex,
          onTap: (value) {
            curentIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/image/walet.png")),
                label: 'محفظه'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/image/home.png")),
                label: 'الرئسيه'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/image/personal.png")),
                label: 'الحساب الشخصى'),
          ]),
      body: pages[curentIndex],
    );
  }
}
