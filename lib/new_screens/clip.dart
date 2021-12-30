import 'package:flutter/material.dart';

class TopOval extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path= Path();
    path.lineTo(0, size.height);
    // path.lineTo(size.width, 0);
    var firstStartPoint= Offset(size.width/6 - size.width/8, size.height-60);
    var firstEndPoint= Offset(size.width/6 + size.width/8, size.height-70);
    path.quadraticBezierTo(firstStartPoint.dx, firstEndPoint.dy, firstEndPoint.dx, firstEndPoint.dy);




    var secStartPoint= Offset(size.width/7, size.height-70);
    var secEndPoint= Offset(size.width/7, size.height-70);
    path.quadraticBezierTo(secStartPoint.dx, secStartPoint.dy, secEndPoint.dx, secEndPoint.dy);


    var thirdStartPoint= Offset(3*(size.width/4)+size.width/5, size.height-60);
    var thirdEndPoint= Offset(size.width, size.height-90);
    path.quadraticBezierTo(thirdStartPoint.dx, thirdStartPoint.dy, thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}