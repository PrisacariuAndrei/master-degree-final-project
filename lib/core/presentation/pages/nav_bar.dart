import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/presentation/widgets/nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
    required this.navigationShell,
    required this.scrollController,
  });

  final StatefulNavigationShell navigationShell;
  final ScrollController scrollController;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool _isNavVisible = true;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (widget.scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      // Scrolling down, hide nav bar
      if (_isNavVisible) {
        setState(() {
          _isNavVisible = false;
        });
      }
    } else if (widget.scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      // Scrolling up, show nav bar
      if (!_isNavVisible) {
        setState(() {
          _isNavVisible = true;
        });
      }
    }
  }

  @override
  void dispose() {
    widget.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            widget.navigationShell,
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              bottom: _isNavVisible ? 0 : -200,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center, // Centers it horizontally
                child: Container(
                  height: 64,
                  padding: const EdgeInsets.all(8),
                  margin:
                      const EdgeInsets.only(left: 24, right: 24, bottom: 24),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.3),
                        offset: const Offset(0, 10),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () => widget.navigationShell.goBranch(0),
                        child: NavBarItem(
                          iconPath: 'assets/images/logo.svg',
                          title: "Acasa",
                          isSelected: widget.navigationShell.currentIndex == 0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => widget.navigationShell.goBranch(1),
                        child: NavBarItem(
                          iconPath: 'assets/images/favorite.svg',
                          title: "Favorite",
                          isSelected: widget.navigationShell.currentIndex == 1,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
