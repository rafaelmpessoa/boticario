part of 'user_post_item_bloc.dart';

@freezed
abstract class UserPostItemEvent with _$UserPostItemEvent {
  const factory UserPostItemEvent.onRemove(String id) = _OnRemove;
}
