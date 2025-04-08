import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

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
      leadingWidth: 300,
/*      Padding(
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
      ),*/
      centerTitle: false,
      title: title,
    );
  }
}
