import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sty_lish_app/core/utils/app_assets.dart';
import 'package:sty_lish_app/core/utils/app_values.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';
import 'package:sty_lish_app/core/widgets/app_button.dart';
import 'package:sty_lish_app/core/widgets/app_text_field.dart';
import 'package:sty_lish_app/core/widgets/bottom_navigation-bar.dart';
import 'package:sty_lish_app/core/widgets/text_with_text_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                AppAssets.largeClipper,
                width: width,
              ),
              SvgPicture.asset(
                AppAssets.smallClipper,
                width: width,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome Back!',
                    style: AppStyles.styleBold24(context),
                    textHeightBehavior: const TextHeightBehavior(
                        applyHeightToLastDescent: false),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.s40,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const AppTextField(
                    icon: Icons.person,
                    labelText: 'Username or Email',
                  ),
                  const SizedBox(
                    height: AppSize.s30,
                  ),
                  const AppTextField(
                    icon: Icons.lock,
                    labelText: 'Password',
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: AppSize.s10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Forgot Password?',
                        style: AppStyles.styleRegular12(context),
                      ),
                    ),
                  ),
                  const Spacer(),
                  AppButton(
                    text: 'Login',
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const StyLishBottomNavigationBar(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s30,
                  ),
                  TextWithTextButton(
                    firstText: 'Create An Account  ',
                    secondText: 'Sign Up',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: AppSize.s80,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
