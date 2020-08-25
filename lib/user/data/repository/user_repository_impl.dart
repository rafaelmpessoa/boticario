import 'package:boticario/user/data/data_source/user_local_data_source.dart';
import 'package:boticario/user/data/data_source/user_remote_data_source.dart';
import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/repository/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:boticario/user/domain/entities/user_post.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource userRemoteDataSource;
  final UserLocalDataSource userLocalDataSource;

  const UserRepositoryImpl(this.userRemoteDataSource, this.userLocalDataSource);

  @override
  Future<Either<UserFailures, User>> createUser(
      {@required User user, @required String password}) async {
    try {
      final createdUser =
          await userRemoteDataSource.createUser(user: user, password: password);
      return right(createdUser);
    } catch (e) {
      return left(UserFailures.serverError());
    }
  }

  @override
  Future<Either<UserFailures, UserPost>> createPost({
    @required String userId,
    @required UserPost post,
  }) async {
    try {
      final insertedPost =
          await userRemoteDataSource.createPost(userId: userId, userPost: post);
      return right(insertedPost);
    } catch (e) {
      return left(UserFailures.serverError());
    }
  }

  @override
  Future<Either<UserFailures, List<User>>> getPosts(
      {@required String userId}) async {
    try {
      final result = await userRemoteDataSource.getPosts(userId: userId);

      return right(result);
    } catch (e) {
      return left(UserFailures.serverError());
    }
  }

  @override
  Future<Either<UserFailures, List<UserPost>>> getNotSendPosts() async {
    try {
      final result = await userLocalDataSource.getNotSendPosts();
      return right(result);
    } catch (e) {
      return left(UserFailures.unexpected());
    }
  }

  @override
  Future<Either<UserFailures, Unit>> removeCachedUser() async {
    try {
      await userLocalDataSource.removeLocalUser();
      return right(null);
    } catch (e) {
      return left(UserFailures.unexpected());
    }
  }

  @override
  Future<Either<UserFailures, UserPost>> createLocalPost(
      {@required String userId, @required UserPost post}) async {
    try {
      final insertedUserPost =
          await userLocalDataSource.createLocalPost(userPost: post);
      return right(insertedUserPost);
    } catch (e) {
      return left(UserFailures.unexpected());
    }
  }

  @override
  Future<Either<UserFailures, User>> createLocalUser(
      {@required User user, @required String password}) async {
    try {
      final localUser = await userLocalDataSource.createLocalUser(
          user: user, password: password);
      return right(localUser);
    } catch (e) {
      return left(UserFailures.unexpected());
    }
  }

  @override
  Future<Either<UserFailures, User>> getCurrentUser() async {
    try {
      final localUser = await userLocalDataSource.getCurrentUser();
      return right(localUser);
    } catch (e) {
      return left(UserFailures.unexpected());
    }
  }

  @override
  Future<Either<UserFailures, Unit>> removePosts() async {
    try {
      await userLocalDataSource.removePosts();
      return right(null);
    } catch (e) {
      return left(UserFailures.unexpected());
    }
  }

  @override
  Future<Either<UserFailures, Unit>> removeCachedPost(String postId) async {
    try {
      await userLocalDataSource.removePost(postId);
      return right(null);
    } catch (e) {
      return left(UserFailures.unexpected());
    }
  }

  @override
  Future<Either<UserFailures, Unit>> removePost({String postId}) async {
    try {
      await userRemoteDataSource.removePost(postId);

      return right(null);
    } catch (e) {
      return left(UserFailures.serverError());
    }
  }

  @override
  Future<Either<UserFailures, UserPost>> updateLocalPost(
      {String postId, String post}) async {
    try {
      final result = await userLocalDataSource.updateUserPost(
        post: post,
        postId: postId,
      );
      return right(result);
    } catch (e) {
      return left(UserFailures.unexpected());
    }
  }

  @override
  Future<Either<UserFailures, UserPost>> updatePost(
      {String postId, String post}) async {
    try {
      final updatedPost =
          await userRemoteDataSource.updateUserPost(post: post, postId: postId);

      return right(updatedPost);
    } catch (e) {
      return left(UserFailures.serverError());
    }
  }
}
