import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../core/error/Failure.dart';
import '../../core/usecase/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/repository_repository.dart';

class LoginUseCase implements UseCase<UserEntity, LoginParams> {
  final RepositoryRepository repository;

  LoginUseCase(this.repository);

  @override
  Future<Either<Failure, UserEntity>> call(LoginParams params) async {
    return await repository.login(
      username: params.username,
      password: params.password,
    );
  }
}

class LoginParams extends Equatable {
  final String username;
  final String password;

  const LoginParams({
    required this.username,
    required this.password,
  });

  @override
  List<Object?> get props => [username, password];
}