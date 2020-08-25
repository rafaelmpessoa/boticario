import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:dartz/dartz.dart';

abstract class GetTokenUseCase {
  Future<Either<AuthFailures, String>> call();
}
