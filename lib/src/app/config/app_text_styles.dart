import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:textinput_builder/src/app/config/app_colors.dart';
import 'package:textinput_builder/src/app/config/app_constants.dart';

/// AppTextStyle format as follows:
/// [fontWeight][fontSize][colorName][opacity]
/// Example: bold18White05
///
class AppTextStyles {
  static TextStyle title = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static TextStyle body = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 13,
    color: Colors.grey,
  );

  static TextStyle header1 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: AppColors.gray900,
  );

  static TextStyle header2 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.gray900,
  );

  static TextStyle header3 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.gray900,
  );

  static TextStyle header4 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.gray900,
  );

  static TextStyle header5 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.gray900,
  );

  static TextStyle body1 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    color: AppColors.gray900,
  );

  static TextStyle body2 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    color: AppColors.gray900,
  );

  static TextStyle body3 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 12,
    color: AppColors.gray900,
  );

  static TextStyle body4 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 10,
    color: AppColors.gray900,
  );

  static TextStyle header36Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 36,
    fontWeight: FontWeight.w700,
    color: AppColors.gray900,
    decoration: TextDecoration.none,
  );
  static TextStyle header36Black64 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 36,
    fontWeight: FontWeight.w700,
    color: AppColors.black.withOpacity(0.64),
    decoration: TextDecoration.none,
  );

  static TextStyle light12Black64 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.black.withOpacity(.64),
    decoration: TextDecoration.none,
  );
  static TextStyle light12Black80 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.black.withOpacity(.8),
    decoration: TextDecoration.none,
  );
  static TextStyle light12Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    decoration: TextDecoration.none,
  );
  static TextStyle light12Red = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.red800,
    decoration: TextDecoration.none,
  );
  static TextStyle light14Red = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.red800,
    decoration: TextDecoration.none,
  );
  static TextStyle light14Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    decoration: TextDecoration.none,
  );
  static TextStyle light14Black64 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black.withOpacity(.64),
    decoration: TextDecoration.none,
  );
  static TextStyle light14Black80 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black.withOpacity(.8),
    decoration: TextDecoration.none,
  );
  static TextStyle light14White = TextStyle(
    fontSize: 14,
    color: AppColors.white.withOpacity(.8),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );
  static TextStyle light16Black64 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black.withOpacity(0.64),
    decoration: TextDecoration.none,
  );
  static TextStyle light16Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    decoration: TextDecoration.none,
  );
  static TextStyle medium14Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    decoration: TextDecoration.none,
  );

  static TextStyle medium14Black80 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.black.withOpacity(0.8),
    decoration: TextDecoration.none,
  );

  static TextStyle medium14Gray = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.gray,
  );
  static TextStyle medium12Primary = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    decoration: TextDecoration.none,
  );
  static TextStyle medium14Primary = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    decoration: TextDecoration.none,
  );
  static TextStyle medium16Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle medium16Gray = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.gray,
    decoration: TextDecoration.none,
  );
  static TextStyle medium16White = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle medium14White = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );

  static TextStyle medium18White = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 18,
    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );

  static TextStyle medium24White = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 24,
    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );

  static TextStyle medium18Black = GoogleFonts.getFont(
    kFontFamily,
    color: AppColors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle medium24Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    decoration: TextDecoration.none,
  );

  static TextStyle bold14Primary = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );

  static TextStyle bold14Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );
  static TextStyle bold16Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );
  static TextStyle bold16Primary = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
    decoration: TextDecoration.none,
  );
  static TextStyle bold16White = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );
  static TextStyle bold18Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 18,
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold24Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 24,
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold28Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 28,
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

  static TextStyle regular12Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 12,
    color: AppColors.black,
    fontWeight: FontWeight.w400,
  );
  static TextStyle regular12Black64 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 12,
    color: AppColors.black.withOpacity(.64),
    fontWeight: FontWeight.w400,
  );
  static TextStyle regular12Primary = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 12,
    color: AppColors.primary,
    fontWeight: FontWeight.w400,
  );

  static TextStyle regular14Primary = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    color: AppColors.primary,
    fontWeight: FontWeight.w400,
  );
  static TextStyle regular12White = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 12,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  );
  static TextStyle regular12Gray = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.gray,
  );
  static TextStyle regular18Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static TextStyle regular14Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    decoration: TextDecoration.none,
  );
  static TextStyle regular14Black80 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black.withOpacity(.8),
    decoration: TextDecoration.none,
  );
  static TextStyle regular14Gray = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.gray,
  );
  static TextStyle regular14White = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static TextStyle regular16Gray = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.gray,
  );

  static TextStyle regular16Black = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static TextStyle medium16Black64 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    color: AppColors.black.withOpacity(.64),
    fontWeight: FontWeight.w500,
  );

  static TextStyle bold18Black80 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.black.withOpacity(.8),
    decoration: TextDecoration.none,
  );

  static TextStyle regular16Black80 = GoogleFonts.getFont(
    kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black.withOpacity(.8),
    decoration: TextDecoration.none,
  );
}
