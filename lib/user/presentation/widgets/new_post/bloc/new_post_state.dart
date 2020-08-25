part of 'new_post_bloc.dart';

@freezed
abstract class NewPostState with _$NewPostState {
  const factory NewPostState.initial() = _Initial;
  const factory NewPostState.loading() = _Loading;
  const factory NewPostState.success(UserPost post) = _Success;
  const factory NewPostState.error(String error) = _Error;
}
