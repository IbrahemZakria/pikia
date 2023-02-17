import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/homePages/pikia/reciclingWedgit/recicleBotton.dart';
import 'package:pikia/themes/themes.dart';

class waletPage extends StatelessWidget {
  const waletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: themes.PikiaColor,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(
                        MediaQuery.of(context).size.height * .08))),
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * .06),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .03),
                    alignment: Alignment.topLeft,
                    height: MediaQuery.of(context).size.height * .2,
                    child: Image.asset(
                      'assets/image/logo.png',
                    )),
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .03),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'كارد',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 3,
              child: ListView(
                children: [
                  Wrap(
                    children: [
                      Chip(
                        backgroundColor: Colors.white,
                        label: recicleBotton(),
                      ),
                      Chip(
                        backgroundColor: Colors.white,
                        label: recicleBotton(),
                      ),
                      Chip(
                        backgroundColor: Colors.white,
                        label: recicleBotton(),
                      ),
                      Chip(
                        backgroundColor: Colors.white,
                        label: recicleBotton(),
                      ),
                      Chip(
                        backgroundColor: Colors.white,
                        label: recicleBotton(),
                      ),
                      Chip(
                        backgroundColor: Colors.white,
                        label: recicleBotton(),
                      ),
                    ],
                  )
                ],
              )),
          Expanded(
            child: Column(
              children: [
                Divider(
                  color: Colors.black,
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * .03,
                  endIndent: MediaQuery.of(context).size.width * .03,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * .03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'اجمالى عدد النقط = 0',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * .03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'اجمالى المبلغ = 0',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                )
              ],
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
