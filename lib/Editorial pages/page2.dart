import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/Editorial%20pages/page1.dart';
import 'package:pikia/Editorial%20pages/page3.dart';
import 'package:pikia/themes/themes.dart';

class page2 extends StatelessWidget {
  static String routename = 'page2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .02),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/starting2.png'),
                fit: BoxFit.cover)),
        alignment: AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Page1.routename);
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
                      Page3.routename,
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
        ),
      ),
    );
  }
}
