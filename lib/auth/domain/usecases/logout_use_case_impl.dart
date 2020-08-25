import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:boticario/auth/domain/repository/auth_repository.dart';
import 'package:boticario/auth/domain/usecases/logout_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LogoutUseCase)
class LogoutUseCaseImpl extends LogoutUseCase {
  final AuthRepository authRepository;
  LogoutUseCaseImpl(this.authRepository);

  @override
  Future<Either<AuthFailures, Unit>> call() => authRepository.logout();
}
