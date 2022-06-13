import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/data.dart';

import '../Diminson.dart';
import 'CardDetails.dart';

class Card_Weigets extends StatelessWidget {
  const Card_Weigets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Selected Card",style: TextStyle(wordSpacing: 3,letterSpacing: 2,fontFamily: "Josefin Sans",fontWeight: FontWeight.w900,fontSize: 20),),
        Container(height: Dim.Hight100*2.7,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, indx) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                        vertical: Dim.Hight10, horizontal: Dim.Hight20),
                    width: Dim.Width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dim.Width30 * 2),
                        boxShadow: CustomShadow,
                        color: PrimaryColor),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          left: Dim.Hight100/3,
                          bottom: -Dim.Hight100*2,
                          top: Dim.Hight100*2,
                          right: Dim.Hight100/2,
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: CustomShadow,
                                shape: BoxShape.circle,
                                color: Colors.white38),
                          ),
                        ),
                        Positioned.fill(
                          left: -Dim.Hight100 * 4.4,
                          bottom: -Dim.Hight100,
                          top: -Dim.Hight100,
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: CustomShadow,
                                shape: BoxShape.circle,
                                color: Colors.white38),
                          ),
                        ),
                        CardDetails()
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
