import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pikia/loginPages/LoginPage.dart';
import 'package:pikia/loginPages/loginButton.dart';
import 'package:pikia/loginPages/textField.dart';

class SaveAcountPage extends StatelessWidget {
  const SaveAcountPage({super.key});
  static String routename = 'SaveAcountPage';

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
                          'sign up',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .03),
                        textField(hintText: 'email'),
                        textField(hintText: 'password'),
                        textField(hintText: 'confirm password'),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .02),
                        loginButton(
                            ontap: () {
                              Navigator.pushNamed(context, LoginPage.routename);
                            },
                            text: 'Sign up'),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
