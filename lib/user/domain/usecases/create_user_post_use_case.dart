import 'package:boticario/user/domain/entities/user_post.dart';
import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:dartz/dartz.dart';

abstract class CreateUserPostUseCase {
  Future<Either<UserFailures, UserPost>> call(UserPost post);
}
