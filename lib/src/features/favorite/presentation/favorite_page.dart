import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/data/favourite_products.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';
import 'package:sty_lish_app/core/utils/app_values.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';
import 'package:sty_lish_app/core/widgets/product_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop,
        ),
        title: Text(
          'Favorite',
          style:
              AppStyles.styleBold16(context).copyWith(color: AppColors.black),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: favouriteProducts.length,
        padding: const EdgeInsets.all(AppPadding.p16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 171 / 270,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16),
        itemBuilder: (context, index) => ProductCard(
          index: index,
          isFavorite: true,
        ),
      ),
    );
  }
}
