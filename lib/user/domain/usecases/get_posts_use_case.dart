import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:dartz/dartz.dart';

abstract class GetPostsUseCase {
  Future<Either<UserFailures, List<User>>> call();
}
