import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/data/products_data.dart';
import 'package:sty_lish_app/core/utils/app_values.dart';
import 'package:sty_lish_app/core/widgets/product_card.dart';

class ListProducts extends StatelessWidget {
  const ListProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            productsData.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
              child: ProductCard(
                index: index,
                isFavorite: false,
              ),
            ),
          )
        ],
      ),
    );
  }
}
