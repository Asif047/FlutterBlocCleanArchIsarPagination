import 'package:equatable/equatable.dart';
import '../../../domain/entities/repository_entity.dart';

abstract class RepositoryState extends Equatable {
  const RepositoryState();

  @override
  List<Object?> get props => [];
}

class RepositoryInitial extends RepositoryState {}

class RepositoryLoading extends RepositoryState {}

class RepositoryLoaded extends RepositoryState {
  final List<RepositoryEntity> repositories;
  final bool hasReachedEnd;
  final int currentPage;
  final int totalItems;
  final String query;

  const RepositoryLoaded({
    required this.repositories,
    required this.hasReachedEnd,
    required this.currentPage,
    required this.totalItems,
    required this.query,
  });

  @override
  List<Object?> get props => [repositories, hasReachedEnd, currentPage, totalItems, query];

  RepositoryLoaded copyWith({
    List<RepositoryEntity>? repositories,
    bool? hasReachedEnd,
    int? currentPage,
    int? totalItems,
    String? query,
  }) {
    return RepositoryLoaded(
      repositories: repositories ?? this.repositories,
      hasReachedEnd: hasReachedEnd ?? this.hasReachedEnd,
      currentPage: currentPage ?? this.currentPage,
      totalItems: totalItems ?? this.totalItems,
      query: query ?? this.query,
    );
  }
}

class RepositoryError extends RepositoryState {
  final String message;

  const RepositoryError(this.message);

  @override
  List<Object?> get props => [message];
}

class RepositoryRefreshing extends RepositoryState {
  final List<RepositoryEntity> currentRepositories;

  const RepositoryRefreshing(this.currentRepositories);

  @override
  List<Object?> get props => [currentRepositories];
}

class RepositoryLoadingMore extends RepositoryState {
  final List<RepositoryEntity> currentRepositories;
  final int currentPage;
  final String query;

  const RepositoryLoadingMore({
    required this.currentRepositories,
    required this.currentPage,
    required this.query,
  });

  @override
  List<Object?> get props => [currentRepositories, currentPage, query];
}