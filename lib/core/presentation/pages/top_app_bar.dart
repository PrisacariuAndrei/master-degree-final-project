import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({
    super.key,
    this.title,
    this.showBackButton = false,
  });

  final Widget? title;
  final bool showBackButton;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      surfaceTintColor: AppColors.transparent,
      leadingWidth: 42,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: showBackButton
            ? GestureDetector(
          onTap: () => context.pop(),
              child: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: AppColors.primary,
                size: 28,
                ),
            )
            : SvgPicture.asset(
                'assets/images/logo.svg',
                colorFilter: const ColorFilter.mode(
                  AppColors.primary,
                  BlendMode.srcIn,
                ),
              ),
      ),
      centerTitle: true,
      title: title,
      titleTextStyle: AppTextStyles.title3,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: AppColors.gray1, // Line color
          height: 1.0, // Line thickness
        ),
      ),
    );
  }
}
