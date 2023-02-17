import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/main.dart';
import 'package:pikia/themes/themes.dart';

import '../loginPages/LoginPage.dart';

class personalPage extends StatelessWidget {
  const personalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    'الصفحه الشخصيه',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'user name',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                          size: MediaQuery.of(context).size.width * .08,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'user phone',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: MediaQuery.of(context).size.width * .08,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'user location',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.location_on_outlined,
                          color: Colors.black,
                          size: MediaQuery.of(context).size.width * .08,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'user email',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                          size: MediaQuery.of(context).size.width * .08,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: Text(
                        'log out',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(LoginPage.routename);
                      },
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: MediaQuery.of(context).size.width * .08,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
