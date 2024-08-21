import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/utils/app_assets.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';
import 'package:sty_lish_app/core/utils/app_values.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';
import 'package:sty_lish_app/core/widgets/app_button.dart';
import 'package:sty_lish_app/core/widgets/profile_info_card.dart';
import 'package:sty_lish_app/src/features/auth/presentation/pages/login_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop,
        ),
        title: Text(
          'Profile',
          style:
              AppStyles.styleBold16(context).copyWith(color: AppColors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: AppSize.s10),
            const Center(
              child: SizedBox(
                width: 97,
                height: 97,
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.profile1),
                ),
              ),
            ),
            const SizedBox(height: AppSize.s30),
            const ProfileInfoCard(),
            const Spacer(),
            AppButton(
              text: 'Log out',
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              ),
            ),
            const SizedBox(height: AppSize.s20),
          ],
        ),
      ),
    );
  }
}
