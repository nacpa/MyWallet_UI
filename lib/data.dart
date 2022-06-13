import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color PrimaryColor=Color(0xFFCADCED);
Color PurpalColor=Color(0xFF472A6A);

List<BoxShadow> CustomShadow = [
  BoxShadow(
      color: Colors.white.withOpacity(0.5), spreadRadius: -5, offset: Offset(-5, -5), blurRadius: 30),
  BoxShadow(
      color: Colors.blue[900]!.withOpacity(.2),
      spreadRadius: 2,
      offset: Offset(7, 7),
      blurRadius: 30)
];