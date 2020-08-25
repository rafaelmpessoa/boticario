part of 'user_post_list_bloc.dart';

@freezed
abstract class UserPostListState with _$UserPostListState {
  const factory UserPostListState.initial() = _Initial;
  const factory UserPostListState.loading() = _Loading;
  const factory UserPostListState.loaded(List<UserPostListItem> userPost) =
      _Loaded;
  const factory UserPostListState.error(String error, dynamic event) = _Error;
}
