import 'package:chopper/chopper.dart';
import 'package:feaa/core/domain/utils/utils.dart';
import 'package:feaa/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:feaa/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:feaa/features/home/data/data_sources/home_service.dart';
import 'package:feaa/features/home/data/repositories/home_repository_impl.dart';
import 'package:feaa/features/home/domain/repositories/home_repository.dart';
import 'package:feaa/features/home/presentation/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/domain/utils/constants/app_constants.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC
  sl.registerFactory(
    () => HomeBloc(
      homeRepository: sl<HomeRepository>(),
    ),
  );
  sl.registerFactory(
      ()=> FavoriteBloc(),
  );
  sl.registerFactory(
        ()=> AuthBloc(),
  );

  // Use cases

  // Repositories
  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(
      homeService: sl<HomeService>(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<HomeService>(
    () => sl<ChopperClient>().getService<HomeService>(),
  );

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  sl.registerLazySingleton(
    () => Utils(),
  );

  sl.registerLazySingleton<ChopperClient>(
    () => ChopperClient(
      baseUrl: Uri.parse(kApiUrl),
      converter: const JsonConverter(),
      services: [
        HomeService.create(),
      ],
      interceptors: [
        HttpLoggingInterceptor(),
      ],
    ),
  );
}
