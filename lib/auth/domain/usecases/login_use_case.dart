import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class LoginUseCase {
  Future<Either<AuthFailures, User>> call(
      {@required String email, @required String password});
}
