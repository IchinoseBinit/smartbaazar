import 'package:flutter/material.dart';




class CustomCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Start from the top-left corner
    path.moveTo(0, 10);

    // Draw a straight line to the top-right corner
    path.lineTo(size.width, 10);

    // Create the rounded curve towards the bottom-right
    path.quadraticBezierTo(
      size.width, // Control point for the curve
      size.height, // Control point y position
      size.width, // Endpoint x position
      size.height * 0.2, // Endpoint y position
    );

    // Draw a straight line to the bottom-left corner
    path.lineTo(0, size.height);

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
