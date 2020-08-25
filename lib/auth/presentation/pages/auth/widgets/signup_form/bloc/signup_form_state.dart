part of 'signup_form_bloc.dart';

@freezed
abstract class SignupFormState with _$SignupFormState {
  const factory SignupFormState.initial() = _Initial;
  const factory SignupFormState.loading() = _Loading;
  const factory SignupFormState.success() = _Success;
  const factory SignupFormState.error(String error) = _Error;
}
