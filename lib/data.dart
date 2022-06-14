import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color PrimaryColor=Color(0xFFCADCED);
// Color PrimaryColor=Color(0xFFCADCED);
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
List category = [
  {"name": "Groceries", "amount": 500},
  {"name": "Online Shopping", "amount": 100.0},
  {"name": "Eating Out", "amount": 80.0},
  {"name": "Bills", "amount": 50.0},
  {"name": "Subscriptions", "amount": 100.0},
  {"name": "Fees", "amount": 30.0},
];

 List pieColors = [
  Colors.indigo[400],
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.deepOrange,
  Colors.brown,
];