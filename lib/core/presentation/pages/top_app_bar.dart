import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/presentation/pages/account_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 16),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AccountPage()),
            );
          },
          child: SvgPicture.asset(
            'assets/images/account.svg',
            colorFilter: const ColorFilter.mode(
              AppColors.primary,
              BlendMode.srcIn,
            ),
            width: 40,
          ),
        ),
      ),
    ],
      centerTitle: false,
      title: title,
    );
  }
}
