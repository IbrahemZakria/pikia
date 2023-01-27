import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/themes/themes.dart';

class textField extends StatelessWidget {
  late String hintText;
  textField({required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * .15,
        right: MediaQuery.of(context).size.width * .04,
        top: MediaQuery.of(context).size.height * .03,
      ),
      child: TextField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: '$hintText',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          contentPadding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * .01,
              top: MediaQuery.of(context).size.height * .01,
              right: MediaQuery.of(context).size.width * .02),
        ),
      ),
    );
  }
}
