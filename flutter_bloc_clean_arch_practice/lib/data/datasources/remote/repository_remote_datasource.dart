import 'package:dio/dio.dart';

import '../../../core/error/Failure.dart';
import '../../../core/network/dio_client.dart';
import '../../../core/util/constants.dart';
import '../../models/repository_model.dart';

abstract class RepositoryRemoteDataSource {
  /// Gets repositories from the remote API
  ///
  /// Throws a [ServerFailure] if there is a server error
  Future<List<RepositoryModel>> getRepositories({
    required int page,
    required int perPage,
    required String query,
  });

  /// Gets total count of repositories for a query
  Future<int> getTotalCount(String query);
}

class RepositoryRemoteDataSourceImpl implements RepositoryRemoteDataSource {
  final DioClient dioClient;

  RepositoryRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<List<RepositoryModel>> getRepositories({
    required int page,
    required int perPage,
    required String query,
  }) async {
    try {
      final response = await dioClient.get(
        ApiConstants.searchRepositories,
        queryParameters: {
          'q': query,
          'page': page,
          'per_page': perPage,
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> items = response.data['items'];
        return items
            .map((item) => RepositoryModel.fromJson(item, page: page, query: query))
            .toList();
      } else {
        throw const ServerFailure(ErrorMessages.serverError);
      }
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? ErrorMessages.serverError);
    } catch (e) {
      throw const ServerFailure(ErrorMessages.unknownError);
    }
  }

  @override
  Future<int> getTotalCount(String query) async {
    try {
      final response = await dioClient.get(
        ApiConstants.searchRepositories,
        queryParameters: {
          'q': query,
          'page': 1,
          'per_page': 1,
        },
      );

      if (response.statusCode == 200) {
        return response.data['total_count'] ?? 0;
      } else {
        throw const ServerFailure(ErrorMessages.serverError);
      }
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? ErrorMessages.serverError);
    } catch (e) {
      throw const ServerFailure(ErrorMessages.unknownError);
    }
  }
}