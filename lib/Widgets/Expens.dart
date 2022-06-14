import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Diminson.dart';
import '../data.dart';
import 'Chart.dart';

class Expns extends StatelessWidget {
  const Expns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: category.map((data) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dim.Hight20, vertical: Dim.Hight10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: Dim.Hight10),
                          width: Dim.Hight10,
                          height: Dim.Hight10,
                          decoration: BoxDecoration(
                              color: pieColors[category.indexOf(data)],
                              shape: BoxShape.circle),
                        ),
                        Text(
                          data['name'],
                          style: TextStyle(
                            fontSize: Dim.Hight10 * 1.5,
                          ),
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      )),
      Expanded(child: Chart())
    ]);
  }
}
