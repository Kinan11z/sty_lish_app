import 'package:flutter/material.dart';

import 'package:sty_lish_app/core/helper/responsive_text.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';

abstract class AppStyles {
  //*************  50px   *********** */
  //? Bold 50px
  static TextStyle styleBold50(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 50),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w800,
    );
  }

  //? SemiBold 50px
  static TextStyle styleSemiBold50(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 50),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 50px
  static TextStyle styleMedium50(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 50),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 50px
  static TextStyle styleRegular50(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 50),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  30px   *********** */
  //? Bold 30px
  static TextStyle styleBold30(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 30px
  static TextStyle styleSemiBold30(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 30px
  static TextStyle styleMedium30(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 30px
  static TextStyle styleRegular30(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  24px   *********** */
  //? Bold 24px
  static TextStyle styleBold24(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //*************  26px   *********** */
  //? Bold 26px
  static TextStyle styleBold26(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 26px
  static TextStyle styleSemiBold26(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 26px
  static TextStyle styleMedium26(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 26px
  static TextStyle styleRegular26(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  20px   *********** */
  //? Bold 20px
  static TextStyle styleBold20(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 20px
  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 20px
  static TextStyle styleMedium20(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 20px
  static TextStyle styleRegular20(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  18px   *********** */
  //? Bold 18px
  static TextStyle styleBold18(context) {
    return TextStyle(
      color: AppColors.blue,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Libre_Caslon_Text',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 18px
  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 18px
  static TextStyle styleMedium18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 18px
  static TextStyle styleRegular18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  16px   *********** */
  //? Bold 16px
  static TextStyle styleBold16(context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 16px
  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 16px
  static TextStyle styleMedium16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 16px
  static TextStyle styleRegular16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  14px   *********** */
  //? Bold 14px
  static TextStyle styleBold14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 14px
  static TextStyle styleSemiBold14(context) {
    return TextStyle(
      color: AppColors.primary,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 14px
  static TextStyle styleMedium14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 14px
  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  12px   *********** */
  //? Bold 12px
  static TextStyle styleBold12(context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //*************  10px   *********** */
  //? Bold 10px
  static TextStyle styleBold10(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 12px
  static TextStyle styleSemiBold12(context) {
    return TextStyle(
      color: AppColors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 12px
  static TextStyle styleMedium12(context) {
    return TextStyle(
      color: AppColors.greyTextFieldIcon,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 12px
  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: AppColors.primary,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
}
