import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/data.dart';

import '../Diminson.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
              margin: EdgeInsets.all(Dim.Width10),
              width: Dim.Hight100 * 2.3,
              child: Image.asset("assets/img.png")),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
              decoration: BoxDecoration(boxShadow: CustomShadow),
              margin: EdgeInsets.all(Dim.Hight30),
              width: Dim.Hight100 / 1.3,
              child: Image.asset("assets/atm.png")),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: Dim.Hight100 * 2,
            height: Dim.Hight100,
            child: Column(
              children: [
                Text(
                  "**** **** **** 5245",
                  style: TextStyle(
                      fontSize: Dim.Hight20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Dim.Hight10,
                ),
                Text(
                  "NACHIKETA PANDEY",
                  style: TextStyle(
                      fontSize: Dim.Hight20 / 1.5, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Dim.Hight30/1.5,
            width: Dim.Hight30*4,
            child: Center(
              child: Text(
                "PLATINUM CARD",
                style: TextStyle(
                    fontSize: Dim.Hight20 / 2, fontWeight: FontWeight.w400,wordSpacing: 2,letterSpacing: 2),
              ),
            ),
          ),
        )
      ],
    );
  }
}
