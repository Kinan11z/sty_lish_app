import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/data/products_data.dart';
import 'package:sty_lish_app/core/utils/app_assets.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';
import 'package:sty_lish_app/core/utils/app_values.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';
import 'package:sty_lish_app/core/widgets/favourite_icon.dart';
import 'package:sty_lish_app/core/widgets/raw_rating.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.index, required this.isFavorite});
  final int index;
  final bool isFavorite;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 241,
      width: 171,
      decoration: BoxDecoration(
          color: AppColors.productCardColor,
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(AppAssets.shirt),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p4),
                    child: FavouriteIcon(
                      index: index,
                      isFavorite: isFavorite,
                    ),
                  ),
                )
              ],
            ),
            Text(
              productsData[index].name,
              style: AppStyles.styleBold12(context)
                  .copyWith(color: AppColors.black),
            ),
            Text(
              productsData[index].info,
              style: AppStyles.styleBold10(context)
                  .copyWith(color: AppColors.black),
            ),
            Text(
              '\$${productsData[index].price}',
              style: AppStyles.styleBold12(context)
                  .copyWith(color: AppColors.black),
            ),
            Row(
              children: [
                Text(
                  '\$${productsData[index].oldPrice}',
                  style: AppStyles.styleBold12(context).copyWith(
                    color: AppColors.textGrey,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: AppColors.textGrey,
                    decorationThickness: 2.0,
                  ),
                ),
                const SizedBox(width: AppSize.s10),
                Text(
                  '${productsData[index].discount}%off',
                  style: AppStyles.styleBold10(context)
                      .copyWith(color: AppColors.lightRed),
                ),
              ],
            ),
            RowRating(
              countRates: productsData[index].countRates,
              initialRating: productsData[index].rate,
            )
          ],
        ),
      ),
    );
  }
}
