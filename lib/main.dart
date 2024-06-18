import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Clipper")),
        body: Center(
          child: ClipPath(
            clipper: ClipRelativeLine(),
            child: Container(
              height: 400,
              width: 400,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}

class ClipRelativeLine extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;

    final path = Path();
    path.moveTo(width / 2, 0);
    path.relativeLineTo(100, height);
    path.lineTo(width, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
