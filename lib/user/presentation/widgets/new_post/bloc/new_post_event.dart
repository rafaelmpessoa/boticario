part of 'new_post_bloc.dart';

@freezed
abstract class NewPostEvent with _$NewPostEvent {
  const factory NewPostEvent.onSend(String post) = _OnSend;
  const factory NewPostEvent.onEdit(String id, String post) = _OnEdit;
}
