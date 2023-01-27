import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikia/themes/themes.dart';

class recicleBotton extends StatelessWidget {
  const recicleBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .4,
      height: MediaQuery.of(context).size.height * .28,
      decoration: BoxDecoration(
          border: Border.all(color: themes.Maincolor, width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .09,
                height: MediaQuery.of(context).size.width * .09,
                decoration: BoxDecoration(
                    border: Border.all(color: themes.Maincolor, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  '0',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              )
            ],
          ),
          Image.asset('assets/image/potel.png'),
          Text(
            'data',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            'dat',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * .03),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.minimize,
                            size: MediaQuery.of(context).size.height * .05,
                            color: Colors.black)),
                  ),
                ),
                Text(
                  'data',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {},
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: MediaQuery.of(context).size.height * .05,
                            color: Colors.black,
                          ))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
