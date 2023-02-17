import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/homePages/pikia/reciclingWedgit/recicleBotton.dart';
import 'package:pikia/themes/themes.dart';

class PlasticPage extends StatelessWidget {
  const PlasticPage({super.key});
  static String routename = 'PlasticPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    ' بلاستيك',
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
            child: ListView(
              children: [
                Wrap(
                  alignment: WrapAlignment.spaceAround,
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
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
