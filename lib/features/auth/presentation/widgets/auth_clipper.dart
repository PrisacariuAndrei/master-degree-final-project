
import 'package:flutter/cupertino.dart';

/// A CustomClipper that creates a shape with a S-like (concave) curve at the top,
/// and straight left, right, and bottom edges.
class AuthClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const double highY = 0;
    const double midY = 40;
    const double radius = 60;

    Path path = Path();

    // Start below the top-left corner at (0, midY + radius)
    path.moveTo(0, midY + radius);

    // Arc from (0, midY + radius) up to (radius, midY), clockwise true for inward curve
    path.arcToPoint(
      const Offset(radius, midY),
      radius: const Radius.circular(radius),
      clockwise: true,  // Changed to true
    );

    // Line to middle dip point
    path.lineTo(size.width / 2, midY);

    // Cubic curve to top-right corner
    path.cubicTo(
      size.width * 0.8,  midY,
      size.width * 0.95, highY + 55,
      size.width, highY,
    );

    // Right edge down
    path.lineTo(size.width, size.height);

    // Bottom edge left
    path.lineTo(0, size.height);

    path.close();

    return path;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}