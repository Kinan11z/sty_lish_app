import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';
import 'package:sty_lish_app/core/utils/app_values.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s40,
      child: TextField(
        decoration: InputDecoration(
          fillColor: AppColors.greyTextField,
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.greyTextFieldIcon,
          ),
          hintText: 'Search',
          labelStyle: AppStyles.styleMedium12(context),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
