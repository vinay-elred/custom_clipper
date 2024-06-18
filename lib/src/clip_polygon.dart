import 'package:flutter/material.dart';

class ClipPolygon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final height = size.height;
    final width = size.width;

    var points = [
      Offset(width / 2, 0), // point p1
      Offset(0, height / 2), // point p2
      Offset(width / 2, height), // point p3
      Offset(width, height / 2) // point p4
    ];

    path.addPolygon(points, false);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
