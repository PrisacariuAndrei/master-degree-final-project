import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_constants.dart';
import 'package:feaa/core/presentation/widgets/nav_bar/nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColors.transparent,
        color: AppColors.primary,
        height: 68,
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          NavBarItem(navTab: NavTab.home),
          NavBarItem(navTab: NavTab.studyPrograms),
          NavBarItem(navTab: NavTab.search),
          NavBarItem(navTab: NavTab.events),
          NavBarItem(navTab: NavTab.appMenu),
        ],
        index: widget.navigationShell.currentIndex,
        onTap: (index) => widget.navigationShell.goBranch(index),
      ),
      body: SafeArea(
        child: widget.navigationShell,
      ),
    );
  }
}
