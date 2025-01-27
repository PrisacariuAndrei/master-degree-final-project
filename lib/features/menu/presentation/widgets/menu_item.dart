import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: AppColors.white,
      child: Container(
        margin: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Text(
          title,
          style: AppTextStyles.title3,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
