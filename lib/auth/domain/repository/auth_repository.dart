import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class AuthRepository {
  Future<Either<AuthFailures, User>> login(
      {@required String email, @required String password});
  Future<Either<AuthFailures, Unit>> logout();
  Future<Either<AuthFailures, String>> getToken();
  Future<Either<AuthFailures, Unit>> persistToken(String token);
  Future<Either<AuthFailures, String>> getStoragePassword();
}
