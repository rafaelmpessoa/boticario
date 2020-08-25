part of 'signup_form_bloc.dart';

@freezed
abstract class SignupFormEvent with _$SignupFormEvent {
  const factory SignupFormEvent.onCreateAccount(User user, String password) =
      _OnCreateAccount;
}
