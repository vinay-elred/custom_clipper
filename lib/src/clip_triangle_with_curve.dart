import 'package:flutter/material.dart';

class ClipTriangleWithCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final height = size.height;
    final width = size.width;

    path.moveTo(width / 2, 0);
    path.lineTo(width, height);
    path.quadraticBezierTo(
      width / 2,
      height / 2,
      0,
      height,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
