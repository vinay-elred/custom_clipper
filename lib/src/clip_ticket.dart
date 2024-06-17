import 'package:flutter/material.dart';

class ClipTicket extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    final height = size.height;
    final width = size.width;
    final radii = width * 0.08;

    path.moveTo(radii, 0);
    path.lineTo(width - radii, 0);
    path.lineTo(width, radii);
    path.lineTo(width, height - radii);
    path.arcToPoint(
      Offset(width - radii, height),
      radius: Radius.circular(radii),
    );
    path.lineTo(radii, height);
    path.arcToPoint(
      Offset(0, height - radii),
      radius: Radius.circular(radii),
      clockwise: false,
    );
    path.lineTo(0, radii);
    path.arcToPoint(
      Offset(radii, 0),
      radius: Radius.elliptical(width * 0.15, radii),
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
