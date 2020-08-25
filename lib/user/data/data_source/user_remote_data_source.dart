import 'dart:io';

import 'package:boticario/user/domain/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:boticario/user/domain/entities/user_post.dart';

abstract class UserRemoteDataSource {
  Future<User> createUser({@required User user, @required String password});
  Future<UserPost> createPost({
    @required String userId,
    @required UserPost userPost,
  });
  Future<List<User>> getPosts({@required String userId});
  Future<Unit> removePost(String postId);
  Future<UserPost> updateUserPost(
      {@required String postId, @required String post});
}

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  @override
  Future<User> createUser(
      {@required User user, @required String password}) async {
    // TODO: API CALL TO CREATE USER;

    throw SocketException("mocked offline");
  }

  @override
  Future<UserPost> createPost({
    @required String userId,
    @required UserPost userPost,
  }) async {
    // TODO: API CALL TO CREATE POST;

    throw SocketException("mocked offline");
  }

  @override
  Future<List<User>> getPosts({@required String userId}) async {
    // TODO: API CALL TO GET POSTS;
    // MOCK OFFLINE CALL
    throw SocketException("mocked offline");
  }

  @override
  Future<Unit> removePost(String postId) {
    throw SocketException("mocked offline");
  }

  @override
  Future<UserPost> updateUserPost(
      {@required String postId, @required String post}) {
    throw SocketException("mocked offline");
  }
}
