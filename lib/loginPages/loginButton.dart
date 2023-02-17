import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pikia/themes/themes.dart';

import 'SaveAcountPage.dart';

class loginButton extends StatelessWidget {
  loginButton({required this.ontap, required this.text});
  Function ontap;
  String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          ontap();
        },
        child: Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .1,
            right: MediaQuery.of(context).size.width * .1,
            bottom: MediaQuery.of(context).size.height * .01,
            top: MediaQuery.of(context).size.height * .01,
          ),
          decoration: BoxDecoration(
              color: themes.Maincolor,
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Text(
            '$text',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ));
  }
}
