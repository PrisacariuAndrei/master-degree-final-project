import 'package:feaa/core/data/local/models/home_page_model.dart';
import 'package:feaa/core/presentation/pages/nav_bar.dart';
import 'package:feaa/features/events/presentation/pages/calendar.dart';
import 'package:feaa/features/home/presentation/pages/announcement_page.dart';
import 'package:feaa/features/home/presentation/pages/home.dart';
import 'package:feaa/features/menu/presentation/pages/menu.dart';
import 'package:feaa/features/search/presentation/pages/search.dart';
import 'package:feaa/features/study_programs/presentation/pages/study_programs_list.dart';
import 'package:feaa/router/route_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: RoutePath.home.path,
  navigatorKey: rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return NavBar(navigationShell: navigationShell);
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.home.path,
              name: RoutePath.home.name,
              builder: (context, state) => const Home(),
            ),
            GoRoute(
                path: RoutePath.announcement.path,
                name: RoutePath.announcement.name,
                builder: (context, state) {
                  final data = state.extra! as HomePageAnnouncementModel;
                  return AnnouncementPage(announcement: data);
                }
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.studyPrograms.path,
              name: RoutePath.studyPrograms.name,
              builder: (context, state) => const StudyProgramsList(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.search.path,
              name: RoutePath.search.name,
              builder: (context, state) => const Search(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.calendar.path,
              name: RoutePath.calendar.name,
              builder: (context, state) =>
              const Calendar(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.appMenu.path,
              name: RoutePath.appMenu.name,
              builder: (context, state) => const AppMenu(),
            ),
          ],
        ),
      ],
    ),
  ],
);
