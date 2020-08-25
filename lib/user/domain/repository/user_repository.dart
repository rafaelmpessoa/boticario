import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:boticario/user/domain/entities/user_post.dart';

abstract class UserRepository {
  //User
  Future<Either<UserFailures, User>> createUser(
      {@required User user, @required String password});
  Future<Either<UserFailures, User>> createLocalUser({
    @required User user,
    @required String password,
  });
  Future<Either<UserFailures, UserPost>> createPost({
    @required String userId,
    @required UserPost post,
  });
  Future<Either<UserFailures, Unit>> removeCachedUser();
  Future<Either<UserFailures, User>> getCurrentUser();

  //Post
  Future<Either<UserFailures, UserPost>> createLocalPost({
    @required String userId,
    @required UserPost post,
  });
  Future<Either<UserFailures, Unit>> removePosts();
  Future<Either<UserFailures, Unit>> removeCachedPost(String postId);
  Future<Either<UserFailures, List<User>>> getPosts({@required String userId});
  Future<Either<UserFailures, List<UserPost>>> getNotSendPosts();
  Future<Either<UserFailures, Unit>> removePost({@required String postId});
  Future<Either<UserFailures, UserPost>> updatePost(
      {@required String postId, @required String post});
  Future<Either<UserFailures, UserPost>> updateLocalPost(
      {@required String postId, @required String post});
}
