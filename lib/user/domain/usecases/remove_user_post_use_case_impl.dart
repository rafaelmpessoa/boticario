import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:boticario/user/domain/repository/user_repository.dart';
import 'package:boticario/user/domain/usecases/remove_user_post_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RemoveUserPostUseCase)
class RemoveUserPostUseCaseImpl implements RemoveUserPostUseCase {
  final UserRepository userRepository;

  RemoveUserPostUseCaseImpl(this.userRepository);

  @override
  Future<Either<UserFailures, Unit>> call(String postId) async {
    final notSendPostsResult = await userRepository.getNotSendPosts();

    return notSendPostsResult.fold(
      (l) => left(l),
      (notSendPosts) async {
        // final post = notSendPosts?.firstWhere((element) => element.id == postId,
        //     orElse: () => null);
        // if (post == null) {
        //   return userRepository.removePost(postId: postId);
        // }

        return userRepository.removeCachedPost(postId);
      },
    );
  }
}
