import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../core/network/dio_client.dart';
import '../core/util/constants.dart';
import '../data/datasources/local/repository_local_datasource.dart';
import '../data/datasources/remote/repository_remote_datasource.dart';
import '../data/models/repository_model.dart';
import '../data/repositories/repository_repository_impl.dart';
import '../domain/repositories/repository_repository.dart';
import '../domain/usecase/get_repositories.dart';
import '../domain/usecase/login_usecase.dart';
import '../presentation/cubit/repository_cubit.dart';
import '../presentation/cubit/login_cubit.dart';


final sl = GetIt.instance;

Future<void> init() async {
  // Features - GitHub Repositories
  // Cubit
  sl.registerFactory(
        () => RepositoryCubit(
      getRepositories: sl(),
      refreshRepositories: sl(),
      getTotalCount: sl(),
    ),
  );

  // Login Feature
  // Cubit
  sl.registerFactory(
        () => LoginCubit(
      loginUseCase: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => GetRepositories(sl()));
  sl.registerLazySingleton(() => RefreshRepositories(sl()));
  sl.registerLazySingleton(() => GetTotalCount(sl()));
  sl.registerLazySingleton(() => LoginUseCase(sl()));

  // Repository
  sl.registerLazySingleton<RepositoryRepository>(
        () => RepositoryRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      connectionChecker: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<RepositoryRemoteDataSource>(
        () => RepositoryRemoteDataSourceImpl(dioClient: sl()),
  );
  sl.registerLazySingleton<RepositoryLocalDataSource>(
        () => RepositoryLocalDataSourceImpl(sl()),
  );

  // Core
  sl.registerLazySingleton(() => DioClient());
  sl.registerLazySingleton(() => InternetConnectionChecker());

  // External
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [RepositoryModelSchema],
    directory: dir.path,
    name: DatabaseConstants.isarSchema,
  );
  sl.registerLazySingleton(() => isar);
}