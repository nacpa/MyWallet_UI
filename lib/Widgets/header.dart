import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/data.dart';

import '../Diminson.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(Dim.Width10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text("Nachiketa's Wallet",style: TextStyle(fontSize: Dim.Hight30,fontWeight: FontWeight.w900),),
      Container(height: Dim.Hight30*1.5,width: Dim.Hight30*1.5,
        decoration: BoxDecoration(color: PrimaryColor,boxShadow:CustomShadow,
          shape: BoxShape.circle),child: Stack(children: [
            Container( decoration: BoxDecoration(color:Colors.deepOrange,boxShadow:CustomShadow,
                shape: BoxShape.circle),child: Container( margin: EdgeInsets.all(Dim.Width10/1.6),decoration: BoxDecoration(color:PrimaryColor,boxShadow:CustomShadow,
            shape: BoxShape.circle),child: Center(child: Icon(Icons.notifications)),)

            )],),)
    ],));
  }
}
