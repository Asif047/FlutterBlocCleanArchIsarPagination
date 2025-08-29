import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../../../core/util/constants.dart';
import '../../models/repository_model.dart';

abstract class RepositoryLocalDataSource {
  /// Gets repositories from the local cache
  Future<List<RepositoryModel>> getRepositories({
    required int page,
    required String query,
  });

  /// Caches repositories in the local database
  Future<void> cacheRepositories(List<RepositoryModel> repositories);

  /// Clears all cached repositories for a specific query
  Future<void> clearCache(String query);

  /// Returns the total count of repositories available for a given query
  Future<int> getTotalCount(String query);

  /// Checks if cache exists for the given page and query
  Future<bool> hasCacheForPage({
    required int page,
    required String query,
  });
}

class RepositoryLocalDataSourceImpl implements RepositoryLocalDataSource {
  final Isar _db;

  RepositoryLocalDataSourceImpl(this._db);

  @override
  Future<List<RepositoryModel>> getRepositories({
    required int page,
    required String query,
  }) async {
    return _db.repositoryModels
        .filter()
        .pageEqualTo(page)
        .and()
        .queryEqualTo(query)
        .findAll();
  }

  @override
  Future<void> cacheRepositories(List<RepositoryModel> repositories) async {
    await _db.writeTxn(() async {
      await _db.repositoryModels.putAll(repositories);
    });
  }

  @override
  Future<void> clearCache(String query) async {
    await _db.writeTxn(() async {
      await _db.repositoryModels
          .filter()
          .queryEqualTo(query)
          .deleteAll();
    });
  }

  @override
  Future<int> getTotalCount(String query) async {
    return _db.repositoryModels
        .filter()
        .queryEqualTo(query)
        .count();
  }

  @override
  Future<bool> hasCacheForPage({
    required int page,
    required String query,
  }) async {
    final count = await _db.repositoryModels
        .filter()
        .pageEqualTo(page)
        .and()
        .queryEqualTo(query)
        .count();

    return count > 0;
  }
}