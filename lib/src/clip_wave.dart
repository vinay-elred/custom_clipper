import 'package:flutter/material.dart';

class ClipsWave extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    final height = size.height;
    final width = size.width;

    path.moveTo(width / 2, 0);
    path.lineTo(0, height - 50);
    final c1 = Offset(width * 0.2, height * 0.5);
    final c2 = Offset(width * 0.6, height);
    final p1 = Offset(width, height - 50);
    path.cubicTo(c1.dx, c1.dy, c2.dx, c2.dy, p1.dx, p1.dy);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
