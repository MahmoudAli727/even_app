import 'package:event_app/model/event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventDetailsBackground extends StatelessWidget {
  const EventDetailsBackground({super.key, required this.event});
  final Event event;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ClipPath(
        clipper: ImageClipper(),
        child: Image.asset(
          event.imagePath,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .5,
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.darken,
          color: const Color(0x99000000),
        ),
      ),
    );
  }
}

class ImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartingPoint = const Offset(0, 100);
    Offset curveEndPoint = Offset(size.width, size.height);
    path.lineTo(curveStartingPoint.dx, curveStartingPoint.dy - 5);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.85,
        curveEndPoint.dx, curveEndPoint.dy - 1);
    path.quadraticBezierTo(size.width * 0.99, size.height * 0.99,
        curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
