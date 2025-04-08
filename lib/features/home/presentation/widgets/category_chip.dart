import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({super.key, required this.label, required this.isSelected});

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryDisabled.withAlpha(35) : AppColors.white,
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          color: isSelected ? AppColors.primary : AppColors.white,
        )
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      height: 32,
      child: Text(
        label,
        style: AppTextStyles.body2.copyWith(
          color: isSelected ? AppColors.primary : AppColors.gray3,
          fontSize: 12,
            fontWeight: FontWeight.w600
        )
      ),
    );
  }
}
