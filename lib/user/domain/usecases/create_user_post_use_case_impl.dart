import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:boticario/user/domain/entities/user_post.dart';
import 'package:boticario/user/domain/repository/user_repository.dart';
import 'package:boticario/user/domain/usecases/create_user_post_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CreateUserPostUseCase)
class CreateUserPostUseCaseImpl extends CreateUserPostUseCase {
  final UserRepository userRepository;

  CreateUserPostUseCaseImpl(this.userRepository);

  @override
  Future<Either<UserFailures, UserPost>> call(UserPost post) async {
    final userResult = await userRepository.getCurrentUser();

    return userResult.fold(
      (l) => left(l),
      (user) => _createUserPost(post: post, userId: user.id),
    );
  }

  Future<Either<UserFailures, UserPost>> _createLocalUserPost(
      {@required String userId, @required UserPost post}) async {
    final result =
        await userRepository.createLocalPost(userId: userId, post: post);
    return result;
  }

  Future<Either<UserFailures, UserPost>> _createUserPost(
      {@required String userId, @required UserPost post}) async {
    final result = await userRepository.createPost(userId: userId, post: post);

    return result.fold(
      (l) => l.map(
        serverError: (_) => _createLocalUserPost(post: post, userId: userId),
        unexpected: (_) => left(l),
      ),
      (userPost) => _getNotSendPosts(userPost),
    );
  }

  Future<Either<UserFailures, UserPost>> _getNotSendPosts(
      UserPost userPost) async {
    final notSendUserPostsResult = await userRepository.getNotSendPosts();
    return notSendUserPostsResult.fold(
      (l) => left(l),
      (r) async {
        final notSendUserPost = r?.first;
        if (notSendUserPost == null) {
          final removedResult = await userRepository.removePosts();
          return removedResult.fold(
            (l) => left(l),
            (r) => right(userPost),
          );
        } else {
          return this.call(
            notSendUserPost,
          );
        }
      },
    );
  }
}
