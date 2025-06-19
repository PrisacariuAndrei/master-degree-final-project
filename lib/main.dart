import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:feaa/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:feaa/router/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:feaa/injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await Firebase.initializeApp();
  _setupLogging();

  await di.init();
  runApp(const MyApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    debugPrint('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.sl<FavoriteBloc>(),
        ),
        BlocProvider(
          create: (context) => di.sl<AuthBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'FEAA',
        routerConfig: router,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.background,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
          canvasColor: AppColors.background,
          primaryColor: AppColors.primary,
          primaryColorDark: AppColors.primaryDark,
          primaryColorLight: AppColors.primaryLight,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: AppColors.primary,
            selectionColor: AppColors.primary.withOpacity(0.1),
            selectionHandleColor: AppColors.primaryLight,
          ),
        ),
      ),
    );
  }
}
