import 'package:flutter/material.dart';
import 'package:flutter_ui/Widgets/header.dart';
import 'package:flutter_ui/data.dart';

import 'Diminson.dart';

void main() {
  runApp(MyWallet());
}

class MyWallet extends StatelessWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Josefin Sans"),
        home: Scaffold(
            backgroundColor: PrimaryColor,
            body: Column(
              children: [
                Container(
                  height: Dim.Hight100 * 1.2,
                  width: double.maxFinite,
                  color: PrimaryColor,
                  child: WalletHeader(),
                ),
                Expanded(child: Container()),
                Expanded(child: Container())
              ],
            )));
  }
}
