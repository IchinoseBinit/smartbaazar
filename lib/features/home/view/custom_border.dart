import 'dart:math';
import 'package:flutter/material.dart';



class DashedBorder extends StatelessWidget {
  final Widget child;
  final int dashCount;
  final double strokeWidth;
  final Color strokeColor;
  final double padding;

  const DashedBorder({
    Key? key,
    required this.child,
    required this.dashCount,
    this.strokeWidth = 1.0,
    this.strokeColor = const Color(0xFF62203B), // Default dark border color
    this.padding = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedBorderPainter(
        dashCount: dashCount,
        strokeWidth: strokeWidth,
        strokeColor: strokeColor,
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: child,
      ),
    );
  }
}

class DashedBorderPainter extends CustomPainter {
  final int dashCount;
  final double strokeWidth;
  final Color strokeColor;

  DashedBorderPainter({
    required this.dashCount,
    required this.strokeWidth,
    required this.strokeColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    // Adjust dash size and gap
    const double dashWidth = 6.0;  // Small dash size
    const double dashGap = 10.0;   // Gap between the dashes

    // Draw dashed border in rows (left to right) on all four sides
    _drawDashedLine(canvas, paint, const Offset(0, 0), Offset(size.width, 0), dashWidth, dashGap); // Top
    _drawDashedLine(canvas, paint, Offset(size.width, 0), Offset(size.width, size.height), dashWidth, dashGap); // Right
    _drawDashedLine(canvas, paint, Offset(size.width, size.height), Offset(0, size.height), dashWidth, dashGap); // Bottom
    _drawDashedLine(canvas, paint, Offset(0, size.height), const Offset(0, 0), dashWidth, dashGap); // Left
  }

  void _drawDashedLine(Canvas canvas, Paint paint, Offset start, Offset end, double dashWidth, double dashGap) {
    final double dx = end.dx - start.dx;
    final double dy = end.dy - start.dy;
    final double distance = sqrt(dx * dx + dy * dy);
    final double directionX = dx / distance;
    final double directionY = dy / distance;

    // Dash size and spacing for rows
    double totalDashLength = (dashWidth * dashCount) + (dashGap * (dashCount - 1));
    double currentDistance = 0;

    // Loop through and draw each dash based on dashCount
    while (currentDistance < totalDashLength) {
      final double nextDashEnd = (currentDistance + dashWidth).clamp(0, totalDashLength);
      final Offset dashStart = Offset(
        start.dx + directionX * currentDistance,
        start.dy + directionY * currentDistance,
      );
      final Offset dashEnd = Offset(
        start.dx + directionX * nextDashEnd,
        start.dy + directionY * nextDashEnd,
      );
      canvas.drawLine(dashStart, dashEnd, paint);
      currentDistance += dashWidth + dashGap; // Move forward by dash width and gap
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}