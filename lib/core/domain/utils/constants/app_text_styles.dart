import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

const appFontFamily = ['SegoeUI', 'Tahoma', 'Helvetica', 'Arial', 'sans-serif'];

class AppTextStyles {
  static const title1 = TextStyle(
    fontFamilyFallback: appFontFamily,
    fontWeight: FontWeight.w900,
    fontSize: 24,
    color: AppColors.black1,
  );
  static const title2 = TextStyle(
    fontFamilyFallback: appFontFamily,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: AppColors.primaryDark,
  );
  static const title3 = TextStyle(
    fontFamilyFallback: appFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: AppColors.textColor,
  );
  static const body1 = TextStyle(
    fontFamilyFallback: appFontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: AppColors.textColor,
  );
  static const body2 = TextStyle(
    fontFamilyFallback: appFontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.textColor,
  );
}
