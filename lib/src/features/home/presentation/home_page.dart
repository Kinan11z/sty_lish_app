import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';
import 'package:sty_lish_app/core/utils/app_values.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';
import 'package:sty_lish_app/core/widgets/app_drawer.dart';
import 'package:sty_lish_app/core/widgets/app_search_bar.dart';
import 'package:sty_lish_app/core/widgets/cart/discount_card_section.dart';
import 'package:sty_lish_app/core/widgets/list_categories.dart';
import 'package:sty_lish_app/core/widgets/deal_of_the_time.dart';
import 'package:sty_lish_app/core/widgets/home_app_bar.dart';
import 'package:sty_lish_app/core/widgets/list_products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> key = GlobalKey();
    return Scaffold(
      key: key,
      appBar: HomeAppBar(
        drawerkey: key,
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: AppSize.s16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p16),
              child: AppSearchBar(),
            ),
            const SizedBox(
              height: AppSize.s16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
              child: Row(
                children: [
                  Container(
                    height: 28,
                    width: 1,
                    color: AppColors.primary,
                  ),
                  const SizedBox(width: AppSize.s4),
                  Text(
                    'Category',
                    style: AppStyles.styleSemiBold16(context),
                  )
                ],
              ),
            ),
            const SizedBox(height: AppSize.s16),
            const ListCategories(),
            const SizedBox(height: AppSize.s30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p16),
              child: DiscountCardsSection(),
            ),
            const SizedBox(height: AppSize.s16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p16),
              child: DealOfTheTime(),
            ),
            const SizedBox(height: AppSize.s16),
            const ListProducts(),
            const SizedBox(height: AppSize.s16),
          ],
        ),
      ),
    );
  }
}
