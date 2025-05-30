import 'package:dartz/dartz.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../../domain/entities/repository_entity.dart';
import '../../../domain/repositories/repository_repository.dart';
import '../../core/error/Failure.dart';
import '../../core/util/constants.dart';
import '../datasources/local/repository_local_datasource.dart';
import '../datasources/remote/repository_remote_datasource.dart';


class RepositoryRepositoryImpl implements RepositoryRepository {
  final RepositoryRemoteDataSource remoteDataSource;
  final RepositoryLocalDataSource localDataSource;
  final InternetConnectionChecker connectionChecker;

  RepositoryRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.connectionChecker,
  });

  @override
  Future<Either<Failure, List<RepositoryEntity>>> getRepositories({
    required int page,
    required int perPage,
    String query = 'flutter',
  }) async {
    try {
      // Check if we have cache for this page and query
      final hasCache = await localDataSource.hasCacheForPage(
        page: page,
        query: query,
      );

      if (hasCache) {
        // Return from cache if available
        final cachedRepositories = await localDataSource.getRepositories(
          page: page,
          query: query,
        );

        return Right(cachedRepositories.map((model) => model.toEntity()).toList());
      }

      // No cache, check for internet connection
      if (!(await connectionChecker.hasConnection)) {
        return const Left(NetworkFailure(ErrorMessages.networkError));
      }

      // Fetch from remote and cache
      final repositories = await remoteDataSource.getRepositories(
        page: page,
        perPage: perPage,
        query: query,
      );

      await localDataSource.cacheRepositories(repositories);

      return Right(repositories.map((model) => model.toEntity()).toList());
    } on ServerFailure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RepositoryEntity>>> refreshRepositories({
    required int page,
    required int perPage,
    String query = 'flutter',
  }) async {
    try {
      if (!(await connectionChecker.hasConnection)) {
        return const Left(NetworkFailure(ErrorMessages.networkError));
      }

      // Clear cache for this query
      if (page == 1) {
        await localDataSource.clearCache(query);
      }

      // Fetch fresh data
      final repositories = await remoteDataSource.getRepositories(
        page: page,
        perPage: perPage,
        query: query,
      );

      // Cache new data
      await localDataSource.cacheRepositories(repositories);

      return Right(repositories.map((model) => model.toEntity()).toList());
    } on ServerFailure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> getTotalCount(String query) async {
    try {
      if (await connectionChecker.hasConnection) {
        // Try to get from remote
        return Right(await remoteDataSource.getTotalCount(query));
      } else {
        // Fallback to local count
        return Right(await localDataSource.getTotalCount(query));
      }
    } on ServerFailure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }
}