part of 'user_post_list_bloc.dart';

@freezed
abstract class UserPostListEvent with _$UserPostListEvent {
  const factory UserPostListEvent.started() = _Started;
}