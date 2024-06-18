import 'package:flutter/material.dart';


class ClipMultipleRect extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final height = size.height;
    final width = size.width;
    const radii = 50.0;

    final rect1 = Rect.fromCircle(
      center: Offset(width / 2, height / 2),
      radius: radii,
    );
    path.addRect(rect1);
    final rect2 = Rect.fromPoints(Offset.zero, Offset(width / 2, 100));
    path.addRect(rect2);
    path.addRect(Rect.fromLTWH(0, size.height - 50, 50, 50));
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}