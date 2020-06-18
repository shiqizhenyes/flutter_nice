
import 'dart:math';

import 'package:flutter/material.dart';

class GoBang extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    double eWidth = size.width / 15;
    double eHeight = size.height / 15;
    var paint = Paint()
    ..isAntiAlias = true
    ..style = PaintingStyle.fill
    ..color = Color(0x77cdb175);
    canvas.drawRect(Offset.zero & size, paint);

    paint
    ..style = PaintingStyle.stroke
    ..color = Colors.black87
    ..strokeWidth = 1.0;

    for (int i = 0; i <= 15; i++) {
      double dy = eHeight * i;
      double dx = eWidth * i;
      canvas.drawLine(Offset(0, dy), Offset(size.width, dy), paint);
      canvas.drawLine(Offset(dx, 0), Offset(dx, size.height), paint);
    }

    paint
    ..style = PaintingStyle.fill
    ..color = Colors.black;
    
    canvas.drawCircle(Offset(size.width / 2 - eWidth / 2,
        size.height / 2 - eHeight / 2),
        min(eWidth / 2, eHeight / 2) - 2,
        paint);

    paint.color = Colors.white;
    canvas.drawCircle(Offset(size.width / 2 + eWidth / 2,
        size.height / 2 - eHeight / 2),
        min(eWidth / 2, eHeight / 2) - 2,
        paint);
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}