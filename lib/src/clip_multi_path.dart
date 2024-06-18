import 'package:flutter/material.dart';

class ClipMultiPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;

    final path = Path();
    path.lineTo(width / 3, height);
    path.lineTo(0, height);
    path.close();

    final path2 = Path();
    path2.lineTo(width, height*2);
    path2.lineTo(width, 0);
    path2.close();

    path.addPath(path2, Offset(width / 2, 0));

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}