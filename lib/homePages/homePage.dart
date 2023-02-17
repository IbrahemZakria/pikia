import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/homePages/pikia/PikiaPage.dart';
import 'package:pikia/homePages/personalPage.dart';
import 'package:pikia/homePages/waletPage.dart';
import 'package:pikia/themes/themes.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';

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
  int curentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: curentIndex,
        circleColor: themes.Maincolor,
        activeIconColor: Colors.white,
        inactiveIconColor: themes.black,
        tabs: [
          TabData(icon: Icons.wallet),
          TabData(
            icon: Icons.home,
            iconSize: 25, // Optional
            fontSize: 12, // Optional
          ),
          TabData(icon: Icons.person),
        ],
        onTabChangedListener: (index) => setState(() => curentIndex = index),
      ),
      body: pages[curentIndex],
    );
  }
}
