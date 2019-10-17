import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/ui/ui_helper.dart';

class DrawCircle extends CustomPainter {
  Paint _paint;

  DrawCircle() {
    _paint = Paint()
      ..color = UIHelper.PRIMARY_COLOR
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(0.0, 0.0), 4.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
