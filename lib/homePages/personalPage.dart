import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/main.dart';
import 'package:pikia/themes/themes.dart';

class personalPage extends StatelessWidget {
  const personalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * .01),
          alignment: Alignment.bottomRight,
          child: Text(
            'الصفحه الشخصيه',
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                size: MediaQuery.of(context).size.width * .08,
                color: themes.Maincolor,
              ))
        ],
        leading: Image.asset(
          'assets/image/logo2.png',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'user name',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: themes.Maincolor,
                    size: MediaQuery.of(context).size.width * .08,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'user phone',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.phone,
                    color: themes.Maincolor,
                    size: MediaQuery.of(context).size.width * .08,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'user location',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: themes.Maincolor,
                    size: MediaQuery.of(context).size.width * .08,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'user email',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.email_outlined,
                    color: themes.Maincolor,
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
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                onPressed: () {},
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: themes.Maincolor,
                    size: MediaQuery.of(context).size.width * .08,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
