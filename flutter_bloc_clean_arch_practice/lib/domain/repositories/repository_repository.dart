import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_clean_arch_practice/core/error/Failure.dart';

import '../entities/repository_entity.dart';

abstract class RepositoryRepository {
  /// Gets a paginated list of repositories
  ///
  /// Returns a [List<RepositoryEntity>] on success
  /// Returns a [Failure] on error
  Future<Either<Failure, List<RepositoryEntity>>> getRepositories({
    required int page,
    required int perPage,
    String query = 'flutter',
  });

  /// Refreshes the repository data from the remote source
  ///
  /// Returns a [List<RepositoryEntity>] on success
  /// Returns a [Failure] on error
  Future<Either<Failure, List<RepositoryEntity>>> refreshRepositories({
    required int page,
    required int perPage,
    String query = 'flutter',
  });

  /// Returns the total count of repositories available for the given query
  Future<Either<Failure, int>> getTotalCount(String query);
}