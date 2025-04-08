import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarItem extends StatefulWidget {
  const NavBarItem({
    super.key,
    required this.isSelected,
    required this.iconPath,
    required this.title,
  });

  final String iconPath;
  final String title;
  final bool isSelected;

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.isSelected ? AppColors.primary : AppColors.transparent,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(
            widget.iconPath,
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(
              widget.isSelected ? AppColors.white : AppColors.black,
              BlendMode.srcIn,
            ),
          ),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 10,
              color: widget.isSelected ? AppColors.white : AppColors.black,
            ),
          )
        ],
      ),
    );
  }
}
