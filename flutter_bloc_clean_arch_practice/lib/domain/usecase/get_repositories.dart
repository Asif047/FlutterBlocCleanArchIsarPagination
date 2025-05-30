import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../core/error/Failure.dart';
import '../../core/usecase/usecase.dart';
import '../entities/repository_entity.dart';
import '../repositories/repository_repository.dart';

class GetRepositories implements UseCase<List<RepositoryEntity>, RepositoryParams> {
  final RepositoryRepository repository;

  GetRepositories(this.repository);

  @override
  Future<Either<Failure, List<RepositoryEntity>>> call(RepositoryParams params) {
    return repository.getRepositories(
      page: params.page,
      perPage: params.perPage,
      query: params.query,
    );
  }
}

class RefreshRepositories implements UseCase<List<RepositoryEntity>, RepositoryParams> {
  final RepositoryRepository repository;

  RefreshRepositories(this.repository);

  @override
  Future<Either<Failure, List<RepositoryEntity>>> call(RepositoryParams params) {
    return repository.refreshRepositories(
      page: params.page,
      perPage: params.perPage,
      query: params.query,
    );
  }
}

class GetTotalCount implements UseCase<int, String> {
  final RepositoryRepository repository;

  GetTotalCount(this.repository);

  @override
  Future<Either<Failure, int>> call(String query) {
    return repository.getTotalCount(query);
  }
}

class RepositoryParams extends Equatable {
  final int page;
  final int perPage;
  final String query;

  const RepositoryParams({
    required this.page,
    required this.perPage,
    this.query = 'flutter',
  });

  @override
  List<Object?> get props => [page, perPage, query];
}