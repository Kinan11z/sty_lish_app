import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';
import 'package:sty_lish_app/core/utils/app_values.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';

class RowRating extends StatelessWidget {
  const RowRating(
      {super.key, required this.initialRating, required this.countRates});
  final double initialRating;
  final int countRates;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          itemSize: 17,
          initialRating: initialRating,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          unratedColor: AppColors.textGrey,
          ignoreGestures: true,
          itemBuilder: (context, _) => const Icon(
            Icons.star_rate_rounded,
            color: AppColors.yellow,
          ),
          onRatingUpdate: (rating) {},
        ),
        const SizedBox(width: AppSize.s5),
        Text(
          '$countRates',
          style: AppStyles.styleBold10(context)
              .copyWith(color: AppColors.textGrey),
        )
      ],
    );
  }
}
