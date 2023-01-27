import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/homePages/homePage.dart';
import 'package:pikia/loginPages/SaveAcountPage.dart';
import 'package:pikia/loginPages/textField.dart';
import 'package:pikia/themes/themes.dart';

class LoginPage extends StatelessWidget {
  static String routename = 'LoginPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .06),
              alignment: Alignment.topLeft,
              height: MediaQuery.of(context).size.height * .25,
              child: Image.asset(
                'assets/image/logo.png',
              )),
          SizedBox(height: MediaQuery.of(context).size.height * .06),
          Expanded(
            child: ListView(
              children: [
                textField(hintText: 'الاسم'),
                textField(hintText: 'رقم الهاتف'),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(homePage.routename);
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .1,
                        right: MediaQuery.of(context).size.width * .1,
                        bottom: MediaQuery.of(context).size.height * .01,
                        top: MediaQuery.of(context).size.height * .01,
                      ),
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .08,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: themes.Maincolor, width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        'تسجيل الدخول',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(SaveAcountPage.routename);
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .1,
                        right: MediaQuery.of(context).size.width * .1,
                        bottom: MediaQuery.of(context).size.height * .01,
                        top: MediaQuery.of(context).size.height * .01,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Text(
                        'إنشاء حساب',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
