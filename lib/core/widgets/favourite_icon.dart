import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/data/favourite_products.dart';
import 'package:sty_lish_app/core/data/products_data.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';

class FavouriteIcon extends StatefulWidget {
  const FavouriteIcon(
      {super.key, required this.index, required this.isFavorite});
  final int index;
  final bool isFavorite;
  @override
  State<FavouriteIcon> createState() => _FavouriteIconState();
}

class _FavouriteIconState extends State<FavouriteIcon> {
  late bool isFavourite;

  @override
  void initState() {
    super.initState();
    isFavourite = widget.isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isFavourite) {
          setState(() {
            isFavourite = !isFavourite;
            favouriteProducts.remove(productsData[widget.index]);
          });
        } else {
          setState(() {
            isFavourite = !isFavourite;
            favouriteProducts.add(productsData[widget.index]);
          });
        }
      },
      child: Container(
        width: 24,
        height: 24,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: AppColors.red),
        child: isFavourite == false
            ? const Icon(
                Icons.favorite_border,
                size: 16,
                color: AppColors.white,
              )
            : const Icon(
                Icons.favorite,
                size: 16,
                color: AppColors.white,
              ),
      ),
    );
  }
}
