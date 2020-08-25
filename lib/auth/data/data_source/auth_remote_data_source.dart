import 'dart:io';

import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:boticario/base_remote_data.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthRemoteDataSource {
  Future<User> login({@required String email, @required String password});
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl extends BaseRemoteData
    implements AuthRemoteDataSource {
  @override
  Future<User> login(
      {@required String email, @required String password}) async {
    // TODO: API CALL;
    // MOCKED DATA
    throw SocketException;
    await _persistToken("MOCKED TOKEN");
  }

  Future _persistToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }
}
