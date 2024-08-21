import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/data/categories_data.dart';
import 'package:sty_lish_app/core/utils/app_values.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';

class ListCategories extends StatelessWidget {
  const ListCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            categoriesData.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  SizedBox(
                    width: AppSize.s56,
                    height: AppSize.s56,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(categoriesData[index].image),
                    ),
                  ),
                  const SizedBox(height: AppSize.s4),
                  Text(
                    categoriesData[index].name,
                    style: AppStyles.styleBold10(context),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
