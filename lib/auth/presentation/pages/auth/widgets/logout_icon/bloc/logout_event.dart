part of 'logout_bloc.dart';

@freezed
abstract class LogoutEvent with _$LogoutEvent {
  const factory LogoutEvent.onLogout() = _OnLogout;
}
