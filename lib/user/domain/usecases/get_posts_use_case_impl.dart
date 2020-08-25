import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/repository/user_repository.dart';
import 'package:boticario/user/domain/usecases/get_posts_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetPostsUseCase)
class GetPostsUseCaseImpl implements GetPostsUseCase {
  final UserRepository userRepository;

  GetPostsUseCaseImpl(this.userRepository);

  @override
  Future<Either<UserFailures, List<User>>> call(
      {@required String userId}) async {
    final result = await userRepository.getPosts(userId: userId);

    return result.fold(
      (l) => l.map(
          serverError: (_) {
            return _getNotSendPosts();
          },
          unexpected: (_) => left(l)),
      (userPosts) => right(userPosts),
    );
  }

  Future<Either<UserFailures, List<User>>> _getNotSendPosts() async {
    final result = await userRepository.getNotSendPosts();

    return result.fold((l) => left(l), (posts) async {
      final resultUser = await userRepository.getCurrentUser();
      return resultUser.fold(
        (l) => left(l),
        (user) => right(
          [user.copyWith(posts: posts)],
        ),
      );
    });
  }
}
