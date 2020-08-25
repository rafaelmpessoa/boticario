import 'dart:io';

import 'package:boticario/auth/data/data_source/auth_local_data_source.dart';
import 'package:boticario/auth/data/data_source/auth_remote_data_source.dart';
import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:boticario/auth/domain/repository/auth_repository.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource authLocalDataSource;
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl(this.authLocalDataSource, this.authRemoteDataSource);

  @override
  Future<Either<AuthFailures, User>> login(
      {@required String email, @required String password}) async {
    try {
      final user =
          await authRemoteDataSource.login(email: email, password: password);
      return right(user);
    } catch (e) {
      return left(AuthFailures.serverError());
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> logout() async {
    try {
      await authLocalDataSource.logout();
      return right(null);
    } catch (e) {
      return left(AuthFailures.unexpected());
    }
  }

  @override
  Future<Either<AuthFailures, String>> getToken() async {
    try {
      return right(await authLocalDataSource.getToken());
    } catch (e) {
      return left(AuthFailures.unexpected());
    }
  }

  @override
  Future<Either<AuthFailures, String>> getStoragePassword() async {
    try {
      return right(await authLocalDataSource.getStoragePassword());
    } catch (e) {
      return left(AuthFailures.unexpected());
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> persistToken(String token) async {
    try {
      return right(await authLocalDataSource.persistToken(token));
    } catch (e) {
      return left(AuthFailures.unexpected());
    }
  }
}
