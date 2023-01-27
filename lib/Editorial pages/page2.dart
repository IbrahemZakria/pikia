import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/Editorial%20pages/page3.dart';

class page2 extends StatelessWidget {
  static String routename = 'page2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/image/starting2.png'),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .08,
            left: MediaQuery.of(context).size.width * .45,
            child: InkWell(
              child: Image.asset('assets/image/Navigatinbotton.png'),
              onTap: () {
                Navigator.of(context).pushNamed(Page3.routename);
              },
            ),
          )
        ],
      ),
    );
  }
}
