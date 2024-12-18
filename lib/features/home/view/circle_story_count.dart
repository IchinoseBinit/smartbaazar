import 'dart:math';
import 'package:flutter/material.dart';

class CircleBorderBorder extends StatelessWidget {
  final Widget child;
  final int dashCount;
  final double strokeWidth;
  final Color strokeColor;
  final double padding;

  const CircleBorderBorder({
    Key? key,
    required this.child,
    required this.dashCount,
    this.strokeWidth = 4.0,
    this.strokeColor = const Color(0xFF62203B), // Default dark border color
    this.padding = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CircleBorderBorderPainter(
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

class CircleBorderBorderPainter extends CustomPainter {
  final int dashCount;
  final double strokeWidth;
  final Color strokeColor;

  CircleBorderBorderPainter({
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

    // Draw a single circle with segments based on dashCount
    _drawDashedCircle(canvas, paint, size.width / 2, size.height / 2, size.width / 2);
  }

  // Method to draw a dashed circular border divided into segments
  void _drawDashedCircle(Canvas canvas, Paint paint, double centerX, double centerY, double radius) {
    const double dashWidth = 6.0;  // Dash size
    const double dashGap = 10.0;   // Gap between dashes

    // Calculate the total circumference of the circle
    final double circumference = 2 * pi * radius;

    // Calculate the length of each dash plus gap
    final double dashLength = dashWidth + dashGap;

    // Calculate the angle of each segment
    final double anglePerSegment = 2 * pi / dashCount;

    // Loop through and draw each dash segment
    for (int i = 0; i < dashCount; i++) {
      // Calculate the start and end angle for the current segment
      final double startAngle = i * anglePerSegment;
      final double endAngle = (i + 1) * anglePerSegment;

      final Offset startPoint = _getPointOnCircle(centerX, centerY, radius, startAngle);
      final Offset endPoint = _getPointOnCircle(centerX, centerY, radius, endAngle);

      // Draw the line for the segment (dash)
      canvas.drawLine(startPoint, endPoint, paint);
    }
  }

  // Calculate the position of a point on the circumference of the circle
  Offset _getPointOnCircle(double centerX, double centerY, double radius, double angle) {
    return Offset(
      centerX + radius * cos(angle),
      centerY + radius * sin(angle),
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
