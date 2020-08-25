import 'package:boticario/user/domain/entities/user_post.dart';
import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:boticario/user/domain/repository/user_repository.dart';
import 'package:boticario/user/domain/usecases/update_user_post_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UpdateUserPostUseCase)
class UpdateUserPostUseCaseImpl implements UpdateUserPostUseCase {
  final UserRepository userRepository;

  UpdateUserPostUseCaseImpl(this.userRepository);

  @override
  Future<Either<UserFailures, UserPost>> call(
      {@required String postId, @required String post}) async {
    final notSendPostsResult = await userRepository.getNotSendPosts();

    return notSendPostsResult.fold(
      (l) => left(l),
      (notSendPosts) async {
        final notSendPost =
            notSendPosts.firstWhere((element) => element.id == postId);
        if (notSendPost == null) {
          return userRepository.updatePost(postId: postId, post: post);
        }

        return userRepository.updateLocalPost(postId: postId, post: post);
      },
    );
  }
}
