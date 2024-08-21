import 'package:flutter/material.dart';

class BigClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 350;
    final double _yScaling = size.height / 896;
    path.lineTo(402.861 * _xScaling, 60.9327 * _yScaling);
    path.cubicTo(
      232.739 * _xScaling,
      18.4911 * _yScaling,
      315.924 * _xScaling,
      150.229 * _yScaling,
      211.663 * _xScaling,
      94.4465 * _yScaling,
    );
    path.cubicTo(
      138.989 * _xScaling,
      55.5638 * _yScaling,
      77.175 * _xScaling,
      129.157 * _yScaling,
      46.3912 * _xScaling,
      177.317 * _yScaling,
    );
    path.cubicTo(
      36.3173 * _xScaling,
      193.077 * _yScaling,
      12.1982 * _xScaling,
      194.499 * _yScaling,
      1.79882 * _xScaling,
      178.952 * _yScaling,
    );
    path.cubicTo(
      1.79882 * _xScaling,
      178.952 * _yScaling,
      -67.732 * _xScaling,
      75.0023 * _yScaling,
      -67.732 * _xScaling,
      75.0023 * _yScaling,
    );
    path.cubicTo(
      -75.1014 * _xScaling,
      63.9849 * _yScaling,
      -72.1441 * _xScaling,
      49.0795 * _yScaling,
      -61.1267 * _xScaling,
      41.7101 * _yScaling,
    );
    path.cubicTo(
      -61.1267 * _xScaling,
      41.7101 * _yScaling,
      215.89 * _xScaling,
      -143.583 * _yScaling,
      215.89 * _xScaling,
      -143.583 * _yScaling,
    );
    path.cubicTo(
      224.347 * _xScaling,
      -149.24 * _yScaling,
      235.359 * _xScaling,
      -149.013 * _yScaling,
      243.441 * _xScaling,
      -142.83 * _yScaling,
    );
    path.cubicTo(
      305.197 * _xScaling,
      -95.5818 * _yScaling,
      552.488 * _xScaling,
      98.2611 * _yScaling,
      402.861 * _xScaling,
      60.9327 * _yScaling,
    );
    path.cubicTo(
      402.861 * _xScaling,
      60.9327 * _yScaling,
      402.861 * _xScaling,
      60.9327 * _yScaling,
      402.861 * _xScaling,
      60.9327 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
