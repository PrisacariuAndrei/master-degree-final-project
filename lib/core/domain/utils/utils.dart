import 'package:flutter/material.dart';
import 'constants/app_colors.dart';

class Utils {
  static OutlineInputBorder getBorder({BorderRadius? borderRadius}) {
    return OutlineInputBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: AppColors.gray1,
      ),
    );
  }

  static OutlineInputBorder getErrorBorder({BorderRadius? borderRadius}) {
    return OutlineInputBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    );
  }
}
