import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScratchCardOne extends StatelessWidget {
  const ScratchCardOne({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: PerfectTicketClipper(),
      child: Container(
        color: Colors.amber,
        width: 334,
        height: 164,
        child: Center(
          child: Text(
            'Scratch\nHere',
            style: GoogleFonts.greatVibes(
              fontSize: 40,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class PerfectTicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 10; // Radius of each semi-circle
    double spacing = 10.0; // Spacing between scallops
    double scallopWidth = radius * 2;

    Path path = Path();

    // Start from top-left corner
    path.moveTo(0, 0);

    // Top edge (straight line)
    path.lineTo(size.width, 0);

    // Top-right corner
    path.lineTo(size.width, 0);

    // Right edge with scallops
    double currentY = 0;
    while (currentY < size.height) {
      path.lineTo(size.width, currentY);
      path.arcToPoint(
        Offset(size.width - radius, currentY + radius),
        radius: Radius.circular(radius),
        clockwise: false,
      );
      currentY += scallopWidth + spacing;
      path.lineTo(size.width - radius, currentY - spacing);
      path.arcToPoint(
        Offset(size.width, currentY),
        radius: Radius.circular(radius),
        clockwise: false,
      );
    }

    // Bottom-right corner
    path.lineTo(size.width, size.height);

    // Bottom edge (straight line)
    path.lineTo(0, size.height);

    // Left edge with scallops
    currentY = size.height;
    while (currentY > 0) {
      path.lineTo(0, currentY);
      path.arcToPoint(
        Offset(radius, currentY - radius),
        radius: Radius.circular(radius),
        clockwise: false,
      );
      currentY -= scallopWidth + spacing;
      path.lineTo(radius, currentY + spacing);
      path.arcToPoint(
        Offset(0, currentY),
        radius: Radius.circular(radius),
        clockwise: false,
      );
    }

    // Bottom-left corner
    path.lineTo(0, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
