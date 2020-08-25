import 'package:boticario/strings.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/entities/user_post_list_item.dart';
import 'package:boticario/user/domain/error/user_failures.dart';

class UserConverter {
  static String userFailuresInString(UserFailures failures) {
    return failures.map(
      serverError: (_) => Strings.serverError,
      unexpected: (_) => Strings.unexpectedError,
    );
  }

  static List<UserPostListItem> listUserInListUserPostListItem(
      List<User> userPosts) {
    final List<UserPostListItem> list = [];

    userPosts.forEach((user) {
      user.posts.forEach((post) {
        list.add(UserPostListItem(
          name: user.name,
          post: post,
        ));
      });
    });

    return list;
  }
}
