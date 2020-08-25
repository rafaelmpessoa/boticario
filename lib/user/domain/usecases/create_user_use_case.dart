import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class CreateUserUseCase {
  Future<Either<UserFailures, User>> call(
      {@required User user, @required String password});
}
