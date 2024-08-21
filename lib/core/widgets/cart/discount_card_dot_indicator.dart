import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/widgets/cart/discount_card_dot.dart';

class DiscountCardDotIndicator extends StatelessWidget {
  const DiscountCardDotIndicator({super.key, required this.currentPageView});
  final int currentPageView;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 4),
          child: DiscountCardDot(isActive: index == currentPageView),
        ),
      ),
    );
  }
}
