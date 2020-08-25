import 'package:boticario/user/domain/entities/user_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_post_list_item.freezed.dart';

@freezed
abstract class UserPostListItem with _$UserPostListItem {
  const factory UserPostListItem({
    String name,
    UserPost post,
  }) = _UserPostListItem;
}
