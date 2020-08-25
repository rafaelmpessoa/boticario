import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:boticario/auth/domain/repository/auth_repository.dart';
import 'package:boticario/auth/domain/usecases/get_token_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetTokenUseCase)
class GetTokenUseCaseImpl extends GetTokenUseCase {
  final AuthRepository authRepository;

  GetTokenUseCaseImpl(this.authRepository);

  @override
  Future<Either<AuthFailures, String>> call() => authRepository.getToken();
}
