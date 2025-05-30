import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/util/constants.dart';
import '../../../domain/entities/repository_entity.dart';

import '../../core/error/Failure.dart';
import '../../domain/usecase/get_repositories.dart';
import 'repository_state.dart';

class RepositoryCubit extends Cubit<RepositoryState> {
  final GetRepositories getRepositories;
  final RefreshRepositories refreshRepositories;
  final GetTotalCount getTotalCount;

  RepositoryCubit({
    required this.getRepositories,
    required this.refreshRepositories,
    required this.getTotalCount,
  }) : super(RepositoryInitial());

  Future<void> loadRepositories({
    String query = 'flutter',
    int perPage = ApiConstants.defaultPerPage,
  }) async {
    emit(RepositoryLoading());

    // Get total count first
    final totalCountResult = await getTotalCount(query);

    totalCountResult.fold(
          (failure) => emit(RepositoryError(_mapFailureToMessage(failure))),
          (totalCount) async {
        final params = RepositoryParams(
          page: 1,
          perPage: perPage,
          query: query,
        );

        final result = await getRepositories(params);

        result.fold(
              (failure) => emit(RepositoryError(_mapFailureToMessage(failure))),
              (repositories) {
            final hasReachedEnd = repositories.length >= totalCount;

            emit(RepositoryLoaded(
              repositories: repositories,
              hasReachedEnd: hasReachedEnd,
              currentPage: 1,
              totalItems: totalCount,
              query: query,
            ));
          },
        );
      },
    );
  }

  Future<void> loadMoreRepositories({
    int perPage = ApiConstants.defaultPerPage,
  }) async {
    // Only proceed if in loaded state
    if (state is RepositoryLoaded) {
      final currentState = state as RepositoryLoaded;

      // Don't load more if already reached the end
      if (currentState.hasReachedEnd) return;

      emit(RepositoryLoadingMore(
        currentRepositories: currentState.repositories,
        currentPage: currentState.currentPage,
        query: currentState.query,
      ));

      final nextPage = currentState.currentPage + 1;

      final params = RepositoryParams(
        page: nextPage,
        perPage: perPage,
        query: currentState.query,
      );

      final result = await getRepositories(params);

      result.fold(
            (failure) => emit(RepositoryError(_mapFailureToMessage(failure))),
            (newRepositories) {
          final allRepositories = [
            ...currentState.repositories,
            ...newRepositories,
          ];

          final hasReachedEnd = allRepositories.length >= currentState.totalItems;

          emit(RepositoryLoaded(
            repositories: allRepositories,
            hasReachedEnd: hasReachedEnd,
            currentPage: nextPage,
            totalItems: currentState.totalItems,
            query: currentState.query,
          ));
        },
      );
    }
  }

  Future<void> refreshAllRepositories({
    int perPage = ApiConstants.defaultPerPage,
  }) async {
    // Only proceed if in loaded state
    if (state is RepositoryLoaded) {
      final currentState = state as RepositoryLoaded;

      emit(RepositoryRefreshing(currentState.repositories));

      // Get total count first for fresh data
      final totalCountResult = await getTotalCount(currentState.query);

      totalCountResult.fold(
            (failure) => emit(RepositoryError(_mapFailureToMessage(failure))),
            (totalCount) async {
          final params = RepositoryParams(
            page: 1,
            perPage: perPage,
            query: currentState.query,
          );

          final result = await refreshRepositories(params);

          result.fold(
                (failure) => emit(RepositoryError(_mapFailureToMessage(failure))),
                (repositories) {
              final hasReachedEnd = repositories.length >= totalCount;

              emit(RepositoryLoaded(
                repositories: repositories,
                hasReachedEnd: hasReachedEnd,
                currentPage: 1,
                totalItems: totalCount,
                query: currentState.query,
              ));
            },
          );
        },
      );
    } else {
      // If not in loaded state, just do a normal load
      loadRepositories(perPage: perPage);
    }
  }

  Future<void> searchRepositories({
    required String query,
    int perPage = ApiConstants.defaultPerPage,
  }) async {
    emit(RepositoryLoading());

    // Get total count first
    final totalCountResult = await getTotalCount(query);

    totalCountResult.fold(
          (failure) => emit(RepositoryError(_mapFailureToMessage(failure))),
          (totalCount) async {
        final params = RepositoryParams(
          page: 1,
          perPage: perPage,
          query: query,
        );

        final result = await refreshRepositories(params);

        result.fold(
              (failure) => emit(RepositoryError(_mapFailureToMessage(failure))),
              (repositories) {
            final hasReachedEnd = repositories.length >= totalCount;

            emit(RepositoryLoaded(
              repositories: repositories,
              hasReachedEnd: hasReachedEnd,
              currentPage: 1,
              totalItems: totalCount,
              query: query,
            ));
          },
        );
      },
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return failure.message;
      case CacheFailure:
        return failure.message;
      case NetworkFailure:
        return failure.message;
      default:
        return ErrorMessages.unknownError;
    }
  }
}