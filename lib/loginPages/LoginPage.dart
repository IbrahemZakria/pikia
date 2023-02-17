import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/homePages/homePage.dart';
import 'package:pikia/loginPages/SaveAcountPage.dart';
import 'package:pikia/loginPages/loginButton.dart';
import 'package:pikia/loginPages/textField.dart';
import 'package:pikia/themes/themes.dart';

class LoginPage extends StatelessWidget {
  static String routename = 'LoginPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image/loginImage.png'))),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * .05),
                  Text(
                    'hello.',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(
                    'Create Your account',
                    style: Theme.of(context).textTheme.subtitle2,
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * .02),
                    height: MediaQuery.of(context).size.height * .6,
                    width: MediaQuery.of(context).size.width * 2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .03),
                        Text(
                          'log in',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * .03),
                              textField(hintText: 'email'),
                              textField(hintText: 'password'),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * .06),
                              loginButton(
                                  ontap: () {
                                    Navigator.pushNamed(
                                        context, homePage.routename);
                                  },
                                  text: '  login  '),
                            ],
                          ),
                        )
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
