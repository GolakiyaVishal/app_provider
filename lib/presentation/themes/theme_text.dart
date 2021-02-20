import 'package:app_provider/common/common.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class ThemeText {
  const ThemeText._();

  static TextTheme get _poppinsTextTheme => GoogleFonts.poppinsTextTheme();
  static TextStyle get _whiteHeadline6 => _poppinsTextTheme.headline6.copyWith(
        fontSize: Sizes.dimen_20.sp,
        color: Colors.white,
      );

  static TextStyle get _whiteHeadline5 => _poppinsTextTheme.headline5.copyWith(
        fontSize: Sizes.dimen_24.sp,
        color: Colors.white,
      );

  static TextStyle get whiteSubtitle1 => _poppinsTextTheme.subtitle1.copyWith(
        fontSize: Sizes.dimen_20.sp,
        color: AppColor.white,
      );

  static TextStyle get whiteBodyText2 => _poppinsTextTheme.bodyText2.copyWith(
        fontSize: Sizes.dimen_14.sp,
        color: AppColor.white,
        wordSpacing: 0.25,
        letterSpacing: 0.25,
        height: 1.5,
      );

  static TextStyle get _whiteButton => _poppinsTextTheme.button.copyWith(
        fontSize: Sizes.dimen_14.sp,
        color: AppColor.white,
      );

  static getTextTheme() => TextTheme(
      headline5: _whiteHeadline5,
      headline6: _whiteHeadline6,
      subtitle1: whiteSubtitle1,
      bodyText2: whiteBodyText2,
      button: _whiteButton);
}

extension ThemeTextExtension on TextTheme {

  TextStyle get greySubtitle1 => subtitle1.copyWith(
        color: AppColor.grey,
      );

  TextStyle get greyCaption => caption.copyWith(
        color: AppColor.grey,
      );
}
