part of 'user_post_item_bloc.dart';

@freezed
abstract class UserPostItemState with _$UserPostItemState {
  const factory UserPostItemState.initial() = _Initial;
  const factory UserPostItemState.loading() = _Loading;
  const factory UserPostItemState.successRemove() = _SuccessRemove;
  const factory UserPostItemState.successEdit() = _SuccessEdit;
  const factory UserPostItemState.error(String error) = _Error;
}
