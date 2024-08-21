import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, this.onTap});
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: double.maxFinite,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.primary, borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: AppStyles.styleSemiBold20(context),
        ),
      ),
    );
  }
}
