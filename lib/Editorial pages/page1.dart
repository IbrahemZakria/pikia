import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/Editorial%20pages/page2.dart';
import 'package:pikia/themes/themes.dart';

class Page1 extends StatelessWidget {
  static String routename = 'page1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .02),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image/starting1.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, page2.routename);
                },
                icon: Icon(
                  Icons.keyboard_double_arrow_right_outlined,
                  color: themes.Maincolor,
                )),
          ],
        ),
      ),
    );
  }
}
