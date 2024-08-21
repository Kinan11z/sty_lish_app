import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/utils/app_values.dart';
import 'package:sty_lish_app/core/widgets/cart/discount_card.dart';

class DiscountCardPageView extends StatelessWidget {
  const DiscountCardPageView({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p10),
          child: DiscountCard(),
        ),
      ),
    );
  }
}
