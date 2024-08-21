import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';

class TextWithTextButton extends StatelessWidget {
  const TextWithTextButton(
      {super.key,
      this.onTap,
      required this.firstText,
      required this.secondText});
  final Function()? onTap;

  final String firstText;
  final String secondText;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: AppStyles.styleSemiBold14(context)
                .copyWith(color: AppColors.lightBlack),
          ),
          WidgetSpan(
            child: InkWell(
              onTap: onTap,
              child: Text(
                secondText,
                style: AppStyles.styleSemiBold14(context),
              ),
            ),
            style: const TextStyle(
                color: AppColors.primary, decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}
