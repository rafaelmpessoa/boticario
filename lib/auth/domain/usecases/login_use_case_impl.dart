import 'package:boticario/auth/domain/converter/auth_converter.dart';
import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:boticario/auth/domain/repository/auth_repository.dart';
import 'package:boticario/auth/domain/usecases/login_use_case.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/repository/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LoginUseCase)
class LoginUseCaseImpl extends LoginUseCase {
  final AuthRepository authRepository;
  final UserRepository userRepository;
  LoginUseCaseImpl(this.authRepository, this.userRepository);

  @override
  Future<Either<AuthFailures, User>> call(
      {@required String email, @required String password}) async {
    final loginResult =
        await authRepository.login(email: email, password: password);

    return loginResult.fold(
      (l) => l.maybeMap(
        orElse: () => left(l),
        serverError: (_) => _offlineLogin(email: email, password: password),
      ),
      (r) => right(r),
    );
  }

  Future<Either<AuthFailures, User>> _offlineLogin(
      {@required String email, @required String password}) async {
    final currentUserResult = await userRepository.getCurrentUser();

    return currentUserResult
        .fold((l) => left(AuthConverter.userFailuresInAuthFailures(l)),
            (offlineUser) async {
      if (offlineUser?.email != email)
        return left(AuthFailures.emailNotFound());

      final result = await authRepository.getStoragePassword();
      return result.fold(
        (l) => left(l),
        (storagePassword) async {
          if (storagePassword != password)
            return left(AuthFailures.invalidPassword());

          final persistTokenResult =
              await authRepository.persistToken("OFFLINE TOKEN");

          return persistTokenResult.fold(
            (l) => left(l),
            (r) {
              return right(offlineUser);
            },
          );
        },
      );
    });
  }
}
