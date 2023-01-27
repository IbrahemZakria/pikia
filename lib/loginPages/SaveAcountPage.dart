import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/loginPages/LoginPage.dart';
import 'package:pikia/loginPages/textField.dart';
import 'package:pikia/themes/themes.dart';

class SaveAcountPage extends StatelessWidget {
  static String routename = 'SaveAcountPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .06),
                alignment: Alignment.topLeft,
                height: MediaQuery.of(context).size.height * .25,
                child: Image.asset(
                  'assets/image/logo.png',
                )),
            Expanded(
              child: ListView(
                children: [
                  textField(hintText: 'الاسم'),
                  textField(hintText: 'رقم الهاتف'),
                  textField(hintText: 'العنوان'),
                  textField(hintText: 'الوظيفه'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .04,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(LoginPage.routename);
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * .1,
                          right: MediaQuery.of(context).size.width * .1,
                          bottom: MediaQuery.of(context).size.height * .01,
                          top: MediaQuery.of(context).size.height * .01,
                        ),
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .05,
                          bottom: MediaQuery.of(context).size.height * .03,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: themes.Maincolor, width: 1),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          'تأكيد',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
