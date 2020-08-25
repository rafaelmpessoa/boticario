import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:dartz/dartz.dart';

abstract class GetCurrentUserUseCase {
  Future<Either<UserFailures, User>> call();
}
