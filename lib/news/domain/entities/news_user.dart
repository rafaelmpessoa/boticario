import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_user.freezed.dart';
part 'news_user.g.dart';

@freezed
abstract class NewsUser with _$NewsUser {
  const factory NewsUser({
    @required String name,
    String profile_picture,
  }) = _NewsUser;

  factory NewsUser.fromJson(Map<String, dynamic> json) =>
      _$NewsUserFromJson(json);
}
