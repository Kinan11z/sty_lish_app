import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/utils/app_values.dart';
import 'package:sty_lish_app/core/widgets/cart/discount_card_dot_indicator.dart';
import 'package:sty_lish_app/core/widgets/cart/discount_card_page_view.dart';

class DiscountCardsSection extends StatefulWidget {
  const DiscountCardsSection({super.key});

  @override
  State<DiscountCardsSection> createState() => _DiscountCardsSectionState();
}

class _DiscountCardsSectionState extends State<DiscountCardsSection> {
  late PageController pageController;
  int currentPageView = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageView = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DiscountCardPageView(
          pageController: pageController,
        ),
        const SizedBox(height: AppSize.s5),
        Center(
            child: DiscountCardDotIndicator(currentPageView: currentPageView))
      ],
    );
  }
}
