import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/error/Failure.dart';
import '../../core/util/constants.dart';
import '../../domain/usecase/login_usecase.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;

  LoginCubit({required this.loginUseCase}) : super(LoginInitial());

  Future<void> doLogin({
    required String username,
    required String password,
  }) async {
    emit(LoginLoading());
    final result = await loginUseCase(LoginParams(
      username: username,
      password: password,
    ));

    result.fold(
      (failure) => emit(LoginFailure(_mapFailureToMessage(failure))),
      (user) => emit(LoginSuccess(user)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return failure.message;
      case NetworkFailure:
        return failure.message;
      default:
        return ErrorMessages.unknownError;
    }
  }
}