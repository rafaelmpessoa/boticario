import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_post.g.dart';
part 'user_post.freezed.dart';

@freezed
abstract class UserPost with _$UserPost {
  const factory UserPost({
    String id,
    @required String post,
    @DataConverter() DateTime created_at,
    @DataConverter() DateTime updated_at,
  }) = _UserPost;

  factory UserPost.fromJson(Map<String, dynamic> json) =>
      _$UserPostFromJson(json);
}

class DataConverter<T> implements JsonConverter<DateTime, int> {
  const DataConverter();

  @override
  DateTime fromJson(int us) =>
      us == null ? null : DateTime.fromMillisecondsSinceEpoch(us);

  @override
  int toJson(DateTime dateTime) => dateTime?.millisecondsSinceEpoch;
}
