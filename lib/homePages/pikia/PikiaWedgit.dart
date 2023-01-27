import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/themes/themes.dart';

class pikiaWidet extends StatelessWidget {
  pikiaWidet({required this.image, required this.name, required this.onTap});
  late String image;
  late String name;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          onTap();
        },
        child: Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .04,
            right: MediaQuery.of(context).size.width * .04,
            bottom: MediaQuery.of(context).size.height * .01,
            top: MediaQuery.of(context).size.height * .01,
          ),
          decoration: BoxDecoration(
              border: Border.all(color: themes.Maincolor, width: 2),
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            children: [
              Image.asset(image),
              Expanded(
                  child: Text(
                name,
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.end,
              ))
            ],
          ),
        ));
  }
}
