import 'dart:convert';

import 'package:boticario/common/data/database.dart';
import 'package:boticario/injection.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:boticario/user/domain/entities/user_post.dart';
import 'package:uuid/uuid.dart';

abstract class UserLocalDataSource {
  Future<List<UserPost>> getNotSendPosts();
  Future<UserPost> createLocalPost({@required UserPost userPost});
  Future<Unit> removePosts();
  Future<User> createLocalUser(
      {@required User user, @required String password});
  Future<Unit> removeLocalUser();
  Future<User> getCurrentUser();
  Future<Unit> removePost(String postId);
  Future<UserPost> updateUserPost(
      {@required String postId, @required String post});
}

@LazySingleton(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  final UserPostTableDao appDatabase = getIt<AppDatabase>().userPostTableDao;

  @override
  Future<List<UserPost>> getNotSendPosts() async {
    final List<UserPostTableData> userPostTableData =
        await appDatabase.getUserPosts();
    if (userPostTableData == null) return [];
    return userPostTableData.map((e) => UserPost.fromJson(e.toJson())).toList();
  }

  @override
  Future<Unit> removePosts() async {
    await appDatabase.deleteUserPosts();
    return null;
  }

  @override
  Future<Unit> removePost(String postId) async {
    await appDatabase.deleteUserPost(postId);
    final res = await appDatabase.getUserPosts();
    return null;
  }

  @override
  Future<UserPost> createLocalPost({@required UserPost userPost}) async {
    final uuid = Uuid();
    final id = uuid.v4();
    await appDatabase.insertUserPost(
        UserPostTableData.fromJson(userPost.copyWith(id: id).toJson()));

    final result = await appDatabase.getUserPost(id);
    return UserPost.fromJson(result.toJson());
  }

  @override
  Future<UserPost> updateUserPost(
      {@required String postId, @required String post}) async {
    await appDatabase.updateUserPost(post: post, id: postId);
    final result = await appDatabase.getUserPost(postId);
    return UserPost.fromJson(result.toJson());
  }

  @override
  Future<User> createLocalUser(
      {@required User user, @required String password}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final storage = FlutterSecureStorage();
    await storage.write(key: 'password', value: password);
    final jsonData = user.toJson();
    final inserted = await prefs.setString('user', jsonEncode(jsonData));
    if (!inserted) {
      throw UserFailures.unexpected();
    }
    return user;
  }

  @override
  Future<User> getCurrentUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final jsonUser = prefs.getString('user');
    //TODO: test with null value;
    if (jsonUser == null) return null;
    return User.fromJson(jsonDecode(jsonUser));
  }

  @override
  Future<Unit> removeLocalUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final isRemoved = await prefs.remove('user');
    if (!isRemoved) throw UserFailures.unexpected();
    return null;
  }
}
