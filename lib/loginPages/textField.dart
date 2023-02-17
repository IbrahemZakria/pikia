import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/themes/themes.dart';

class textField extends StatelessWidget {
  String hintText;
  textField({required this.hintText});
  @override
  Widget build(BuildContext context) {
    final textControler = TextEditingController();

    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * .06,
        right: MediaQuery.of(context).size.width * .06,
        top: MediaQuery.of(context).size.height * .03,
      ),
      child: TextField(
        style: Theme.of(context).textTheme.headline1,
        controller: textControler,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(color: themes.secondColor)),
          hintText: '$hintText',
          hintStyle: Theme.of(context).textTheme.headline3,
          prefixIcon: IconButton(
              onPressed: () {
                textControler.clear();
              },
              icon: Icon(Icons.clear),
              color: themes.black),
          contentPadding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * .01,
              top: MediaQuery.of(context).size.height * .01,
              right: MediaQuery.of(context).size.width * .02),
        ),
      ),
    );
  }
}
