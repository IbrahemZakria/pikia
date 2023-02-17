import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/loginPages/loginButton.dart';
import 'package:pikia/themes/themes.dart';
import '../Editorial pages/page2.dart';

import '../loginPages/Login1.dart';
import '../loginPages/SaveAcountPage.dart';

class Page3 extends StatelessWidget {
  static String routename = 'page3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .02),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/starting3.png'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, page2.routename);
                    },
                    icon: Icon(
                      Icons.keyboard_double_arrow_left_outlined,
                      color: themes.Maincolor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        logen1.routename,
                      );
                    },
                    icon: Icon(
                      Icons.keyboard_double_arrow_right_outlined,
                      color: themes.Maincolor,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
