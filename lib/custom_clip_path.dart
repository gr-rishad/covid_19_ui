import 'package:flutter/material.dart';

class CustomClipPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: ClipPath(
          clipper: QuadraticBeizerTo(),
          //MyCustomClipper(),
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}

class QuadraticBeizerTo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    var firstControlPoint = Offset(55, size.height / 1.4);
    var firstEndPoint = Offset(size.width / 1.7, size.height / 1.3);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
  //  var secondControlPoint = Offset(size.width - (0), size.height - 95);
   // var secondEndPoint = Offset(size.width, size.height / 2.4);
    // path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
    //     secondEndPoint.dx, secondEndPoint.dy);
    // path.lineTo(size.width, size.height - 40);
    // path.lineTo(size.width, 0.0);
    // path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
