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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * .06),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .06),
                    alignment: Alignment.topLeft,
                    height: MediaQuery.of(context).size.height * .2,
                    child: Image.asset(
                      'assets/image/logo.png',
                    )),
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .06),
                  alignment: Alignment.topLeft,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Text(
                    'كارد',
                    style: TextStyle(color: themes.Maincolor, fontSize: 60),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .04),
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
                ),
              )),
          Expanded(
            child: Column(
              children: [
                Divider(
                  color: themes.Maincolor,
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
                        style: Theme.of(context).textTheme.subtitle1,
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
                        style: Theme.of(context).textTheme.subtitle1,
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
