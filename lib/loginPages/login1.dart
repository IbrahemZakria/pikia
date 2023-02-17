import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pikia/homePages/homePage.dart';
import 'package:pikia/loginPages/LoginPage.dart';
import 'package:pikia/loginPages/SaveAcountPage.dart';
import 'package:pikia/loginPages/loginButton.dart';
import 'package:pikia/themes/themes.dart';

class logen1 extends StatelessWidget {
  const logen1({super.key});
  static String routename = 'login1';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/image/SplashScreen.png'))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .5),
          Text(
            'sign up',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .08),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, homePage.routename);
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .1,
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .02,
                  vertical: MediaQuery.of(context).size.height * .005),
              alignment: AlignmentDirectional.center,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  color: themes.Maincolor,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: Row(
                children: [
                  Icon(
                    Icons.facebook_rounded,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width * .1,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .08,
                  ),
                  Text(
                    'continue with facebook',
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .02),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .1,
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .02,
                  vertical: MediaQuery.of(context).size.height * .005),
              alignment: AlignmentDirectional.center,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  border: Border.all(color: themes.Maincolor)),
              child: Row(
                children: [
                  Icon(
                    Icons.facebook_rounded,
                    color: Colors.transparent,
                    size: MediaQuery.of(context).size.width * .1,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .08,
                  ),
                  Text(
                    'I will use email or phone',
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .04),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'already have an account?',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginPage.routename);
                  },
                  child: Text('lodin here'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'create account?',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SaveAcountPage.routename);
                  },
                  child: Text('sign up'))
            ],
          )
        ],
      ),
    );
  }
}
