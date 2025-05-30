import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_clean_arch_practice/core/error/Failure.dart';


abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

class PaginationParams extends Equatable {
  final int page;
  final int perPage;

  const PaginationParams({
    required this.page,
    required this.perPage,
  });

  @override
  List<Object> get props => [page, perPage];
}