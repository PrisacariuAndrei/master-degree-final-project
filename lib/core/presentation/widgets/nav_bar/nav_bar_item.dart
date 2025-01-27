import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.navTab,
  });

  final NavTab navTab;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      _buildIconPath(),
      width: 30,
      colorFilter: const ColorFilter.mode(
        AppColors.white,
        BlendMode.srcIn,
      ),
    );
  }

  String _buildIconPath() {
    switch (navTab) {
      case NavTab.home:
        return 'assets/images/nav_bar/ic_bar_home.svg';
      case NavTab.appMenu:
        return 'assets/images/nav_bar/ic_bar_menu.svg';
      case NavTab.search:
        return 'assets/images/nav_bar/ic_bar_search.svg';
      case NavTab.events:
        return 'assets/images/nav_bar/ic_bar_event.svg';
      case NavTab.studyPrograms:
        return 'assets/images/nav_bar/ic_bar_academic.svg';
    }
  }
}
