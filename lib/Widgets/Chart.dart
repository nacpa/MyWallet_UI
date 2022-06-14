import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/data.dart';

import '../Diminson.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  double total = 0;

  @override
  void initState() {
    super.initState();
    category.forEach((e) => total += e['amount']);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext, BoxConstraints) {
        return Container(
          child: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                      boxShadow: CustomShadow,
                      color: PrimaryColor,
                      shape: BoxShape.circle)),
              Container(
                  child: Center(
                    child: SizedBox(
                      width: Dim.Hight100*1.3,
                      child: CustomPaint(
                        child: Container(),
                        foregroundPainter: PieChartCustomPainter(
                          width: Dim.Hight100 * 0.8,
                          categories: category,
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      boxShadow: CustomShadow,
                      color: PrimaryColor,
                      shape: BoxShape.circle)),
              Center(
                child: Container(height: Dim.Hight100/1.8,width: Dim.Hight100/1.8,child: Center(
        child: Text(
        "\₹" + " "+ total.toString(),
        style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: Dim.Hight10),
        )),
                    decoration: BoxDecoration(
                        boxShadow: CustomShadow,
                        color: PrimaryColor,
                        shape: BoxShape.circle)),
              ),

            ],
          ),
          decoration: BoxDecoration(
              boxShadow: CustomShadow,
              color: PrimaryColor,
              shape: BoxShape.circle),
        );
      },
    );
  }
}

class PieChartCustomPainter extends CustomPainter {
  final List categories;
  final double width;
  PieChartCustomPainter({required this.categories, required this.width});
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    double total = 0;
    double startRadian = -pi / 2;
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width / 1.8;
    categories.forEach((f) => total += f['amount']);
    for (var i = 0; i < categories.length; i++) {
      final currentCategory = categories[i];
      final sweepRadian = (currentCategory['amount'] / total) * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
