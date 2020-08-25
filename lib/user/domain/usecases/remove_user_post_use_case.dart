import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:dartz/dartz.dart';

abstract class RemoveUserPostUseCase {
  Future<Either<UserFailures, Unit>> call(String postId);
}
