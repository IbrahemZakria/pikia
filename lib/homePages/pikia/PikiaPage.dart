import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/homePages/pikia/pikiaWidget/PikiaWedgit.dart';
import 'package:pikia/homePages/pikia/reciclingWedgit/plasticPage.dart';
import 'package:pikia/themes/themes.dart';

class PikiaPage extends StatelessWidget {
  const PikiaPage({super.key});

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
                  ' بيكيا',
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
            pikiaWidet(
              image: 'assets/image/plasticLogo.png',
              name: 'بلاستيك',
              onTap: () {
                Navigator.of(context).pushNamed(PlasticPage.routename);
              },
            ),
            pikiaWidet(
              image: 'assets/image/metalLogo.png',
              name: 'معادن',
              onTap: () {
                Navigator.of(context).pushNamed(PlasticPage.routename);
              },
            ),
            pikiaWidet(
              image: 'assets/image/oldDeviseLogo.png',
              name: 'اجهزه قديمه',
              onTap: () {
                Navigator.of(context).pushNamed(PlasticPage.routename);
              },
            ),
            pikiaWidet(
              image: 'assets/image/homeMatirialLogo.png',
              name: 'أدوات منزليه',
              onTap: () {
                Navigator.of(context).pushNamed(PlasticPage.routename);
              },
            ),
            pikiaWidet(
              image: 'assets/image/PaperLogo.png',
              name: 'ورق وكرتون',
              onTap: () {
                Navigator.of(context).pushNamed(PlasticPage.routename);
              },
            ),
            pikiaWidet(
              image: 'assets/image/scrapLogo.png',
              name: 'خرده',
              onTap: () {
                Navigator.of(context).pushNamed(PlasticPage.routename);
              },
            ),
            pikiaWidet(
              image: 'assets/image/SportsMaterialLogo.png',
              name: 'أدوات رياضيه',
              onTap: () {
                Navigator.of(context).pushNamed(PlasticPage.routename);
              },
            ),
            pikiaWidet(
              image: 'assets/image/AntiquesLogo.png',
              name: 'انتيكات',
              onTap: () {
                Navigator.of(context).pushNamed(PlasticPage.routename);
              },
            ),
          ],
        ))
      ],
    ));
  }
}
