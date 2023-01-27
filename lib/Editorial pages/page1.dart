import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/Editorial%20pages/page2.dart';

class Page1 extends StatelessWidget {
  static String routename = 'page1';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/image/starting1.png'),
        Positioned(
          bottom: MediaQuery.of(context).size.height * .08,
          left: MediaQuery.of(context).size.width * .43  ,
          child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(page2.routename) ;
              },
              child: Image.asset('assets/image/Navigatinbotton.png')),
        )
      ],
    );
  }
}
