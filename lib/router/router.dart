import 'package:feaa/core/presentation/pages/nav_bar.dart';
import 'package:feaa/features/favorite/presentation/pages/favorite.dart';
import 'package:feaa/features/home/presentation/pages/home.dart';
import 'package:feaa/core/presentation/pages/account_page.dart';
import 'package:feaa/router/route_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final ScrollController appScrollController = ScrollController();

final router = GoRouter(
  initialLocation: RoutePath.home.path,
  navigatorKey: rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return NavBar(
          navigationShell: navigationShell,
          scrollController: appScrollController,
        );
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.home.path,
              name: RoutePath.home.name,
              builder: (context, state) {
                return Home(scrollController: appScrollController);
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.studyPrograms.path,
              name: RoutePath.studyPrograms.name,
              builder: (context, state) => const Favorite(),
            ),
          ],
        ),
      ],
    ),
  ],
);
