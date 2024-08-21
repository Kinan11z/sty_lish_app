import 'package:flutter/material.dart';

class SmallClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 350;
    final double _yScaling = size.height / 896;
    path.lineTo(363.361 * _xScaling, 42.925 * _yScaling);
    path.cubicTo(
      222.893 * _xScaling,
      8.11109 * _yScaling,
      291.447 * _xScaling,
      116.698 * _yScaling,
      205.395 * _xScaling,
      70.7998 * _yScaling,
    );
    path.cubicTo(
      148.43 * _xScaling,
      40.416 * _yScaling,
      99.4359 * _xScaling,
      93.7155 * _yScaling,
      72.823 * _xScaling,
      133.219 * _yScaling,
    );
    path.cubicTo(
      62.3804 * _xScaling,
      148.719 * _yScaling,
      38.2152 * _xScaling,
      150.13 * _yScaling,
      27.8239 * _xScaling,
      134.595 * _yScaling,
    );
    path.cubicTo(
      27.8239 * _xScaling,
      134.595 * _yScaling,
      -23.012 * _xScaling,
      58.5944 * _yScaling,
      -23.012 * _xScaling,
      58.5944 * _yScaling,
    );
    path.cubicTo(
      -30.3814 * _xScaling,
      47.5771 * _yScaling,
      -27.4241 * _xScaling,
      32.6716 * _yScaling,
      -16.4067 * _xScaling,
      25.3023 * _yScaling,
    );
    path.cubicTo(
      -16.4067 * _xScaling,
      25.3023 * _yScaling,
      206.737 * _xScaling,
      -123.956 * _yScaling,
      206.737 * _xScaling,
      -123.956 * _yScaling,
    );
    path.cubicTo(
      215.187 * _xScaling,
      -129.608 * _yScaling,
      226.171 * _xScaling,
      -129.4 * _yScaling,
      234.243 * _xScaling,
      -123.218 * _yScaling,
    );
    path.cubicTo(
      288.746 * _xScaling,
      -81.4796 * _yScaling,
      485.109 * _xScaling,
      73.0991 * _yScaling,
      363.361 * _xScaling,
      42.925 * _yScaling,
    );
    path.cubicTo(
      363.361 * _xScaling,
      42.925 * _yScaling,
      363.361 * _xScaling,
      42.925 * _yScaling,
      363.361 * _xScaling,
      42.925 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
