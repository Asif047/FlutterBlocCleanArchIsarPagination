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
  late Future<Isar> _db;

  RepositoryLocalDataSourceImpl() {
    _initDb();
  }

  Future<void> _initDb() async {
    final dir = await getApplicationDocumentsDirectory();
    _db = Isar.open(
      [RepositoryModelSchema],
      directory: dir.path,
      name: DatabaseConstants.isarSchema,
    );
  }

  @override
  Future<List<RepositoryModel>> getRepositories({
    required int page,
    required String query,
  }) async {
    final isar = await _db;

    return isar.repositoryModels
        .filter()
        .pageEqualTo(page)
        .and()
        .queryEqualTo(query)
        .findAll();
  }

  @override
  Future<void> cacheRepositories(List<RepositoryModel> repositories) async {
    final isar = await _db;

    await isar.writeTxn(() async {
      await isar.repositoryModels.putAll(repositories);
    });
  }

  @override
  Future<void> clearCache(String query) async {
    final isar = await _db;

    await isar.writeTxn(() async {
      await isar.repositoryModels
          .filter()
          .queryEqualTo(query)
          .deleteAll();
    });
  }

  @override
  Future<int> getTotalCount(String query) async {
    final isar = await _db;

    return isar.repositoryModels
        .filter()
        .queryEqualTo(query)
        .count();
  }

  @override
  Future<bool> hasCacheForPage({
    required int page,
    required String query,
  }) async {
    final isar = await _db;

    final count = await isar.repositoryModels
        .filter()
        .pageEqualTo(page)
        .and()
        .queryEqualTo(query)
        .count();

    return count > 0;
  }
}