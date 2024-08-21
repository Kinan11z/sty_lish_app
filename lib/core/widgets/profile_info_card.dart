import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sty_lish_app/core/utils/app_assets.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: AppColors.productCardColor,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello User Name',
                style: AppStyles.styleBold16(context)
                    .copyWith(color: AppColors.black),
              ),
              const SizedBox(height: 22),
              Text(
                'Name',
                style: AppStyles.styleSemiBold12(context),
              ),
              Text(
                'User Name',
                style: AppStyles.styleRegular12(context)
                    .copyWith(color: AppColors.black),
              ),
              const SizedBox(height: 22),
              Text(
                'Email',
                style: AppStyles.styleSemiBold12(context),
              ),
              Text(
                'info@gmail.com',
                style: AppStyles.styleRegular12(context)
                    .copyWith(color: AppColors.black),
              ),
              const SizedBox(height: 22),
              Text(
                'Phone Number',
                style: AppStyles.styleSemiBold12(context),
              ),
              Text(
                '+963987654321',
                style: AppStyles.styleRegular12(context)
                    .copyWith(color: AppColors.black),
              ),
              const SizedBox(height: 16),
            ],
          ),
          SvgPicture.asset(
            AppAssets.shoppingCart,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
