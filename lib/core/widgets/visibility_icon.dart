import 'package:flutter/material.dart';

class VisibilityIcon extends StatelessWidget {
  final bool isVisibility;
  final VoidCallback toggleVisibility;

  const VisibilityIcon({
    super.key,
    required this.isVisibility,
    required this.toggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: toggleVisibility,
      icon: Icon(
        isVisibility ? Icons.visibility_outlined : Icons.visibility_off,
      ),
    );
  }
}
