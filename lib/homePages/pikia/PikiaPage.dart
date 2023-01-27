import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/homePages/pikia/PikiaWedgit.dart';
import 'package:pikia/homePages/pikia/reciclingWedgit/plasticPage.dart';
import 'package:pikia/themes/themes.dart';

class PikiaPage extends StatelessWidget {
  const PikiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .08,
                        right: MediaQuery.of(context).size.width * .2,
                        left: MediaQuery.of(context).size.width * .2),
                    child: Image.asset('assets/image/logo.png')),
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
            )));
  }
}
