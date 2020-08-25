import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:boticario/auth/domain/usecases/get_token_use_case.dart';
import 'package:boticario/auth/domain/usecases/is_authenticated_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IsAuthenticatedUseCase)
class IsAuthenticatedUseCaseImpl implements IsAuthenticatedUseCase {
  final GetTokenUseCase getTokenUseCase;

  IsAuthenticatedUseCaseImpl(this.getTokenUseCase);
  @override
  Future<Either<AuthFailures, bool>> call() async {
    final result = await getTokenUseCase();

    return result.fold(
      (l) => left(l),
      (token) => token == null ? right(false) : right(true),
    );
  }
}
