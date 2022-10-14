import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const appSecondaryColor = Color(0xFF06C168);
  static const appPrimaryColor = Color(0xFFEFDA20);
  static const backgroundColor = Color(0xFFFFFFFF);
  static const foregroundColor = Color(0xFF000000);
  static const textMutedColor = Color(0xFF8B8B8B);
}

class AppFonts {
  static final pageHeader1 = GoogleFonts.montserrat(
      fontSize: 24,
      color: AppColors.foregroundColor,
      fontWeight: FontWeight.w500);

  static final smallBodyText = GoogleFonts.montserrat(
      fontSize: 14,
      color: AppColors.textMutedColor,
      fontWeight: FontWeight.w500);

  static final textButton = GoogleFonts.montserrat(
    fontSize: 18,
    color: AppColors.appSecondaryColor,
    fontWeight: FontWeight.w500
  );
}
