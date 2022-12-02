import 'package:flutter/material.dart';

// GoogleMap InfoWindow custom 下の三角
class DrawTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    // 左半分
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, 0);
    path.lineTo(size.height, size.width);

    // 右半分
    path.moveTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(size.height, size.width);

    path.close();
    canvas.drawPath(path, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
