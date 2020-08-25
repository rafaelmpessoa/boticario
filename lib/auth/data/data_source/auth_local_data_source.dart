import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future<Unit> logout();
  Future<Unit> persistToken(String token);
  Future<String> getToken();
  Future<String> getStoragePassword();
}

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  @override
  Future<Unit> logout() async {
    try {
      final isRemoved = await _removeToken();
      if (!isRemoved) {
        throw AuthFailures.unexpected();
      }
      return null;
    } catch (e) {
      throw AuthFailures.unexpected();
    }
  }

  Future<bool> _removeToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove('token');
  }

  @override
  Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  @override
  Future<String> getStoragePassword() async {
    final storage = FlutterSecureStorage();
    return storage.read(key: 'password');
  }

  @override
  Future<Unit> persistToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    return null;
  }
}
