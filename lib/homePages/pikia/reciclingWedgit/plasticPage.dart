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
        children: [
          Container(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                'assets/image/logo2.png',
              )),
          Container(
            width: double.infinity,
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * .04),
            child: Text(
              'بلاستيك',
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
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
            ),
          )
        ],
      ),
    );
  }
}
