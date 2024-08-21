import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';

class DiscountCardDot extends StatelessWidget {
  const DiscountCardDot({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 9,
      width: 9,
      decoration: ShapeDecoration(
        color: isActive ? AppColors.dotCardActive : AppColors.dotCardInActive,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
