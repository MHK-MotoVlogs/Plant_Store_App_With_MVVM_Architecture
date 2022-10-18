import 'package:flutter/material.dart';

class LogInHeaderImageClipperer extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    Path myPath=Path();
    myPath.lineTo(0, size.height*0.8);
    Offset firstPointStart=Offset(size.width*0.3, size.height);
    Offset firstPintEnd=Offset(size.width, size.height*0.6);
    myPath.quadraticBezierTo(firstPointStart.dx, firstPointStart.dy, firstPintEnd.dx, firstPintEnd.dy);
    myPath.lineTo(size.width, 0);
    return myPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }

}