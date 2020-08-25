part of 'login_form_bloc.dart';

@freezed
abstract class LoginFormState with _$LoginFormState {
  const factory LoginFormState.initial() = _Initial;
  const factory LoginFormState.loading() = _Loading;
  const factory LoginFormState.success(User user) = _Success;
  const factory LoginFormState.error(AuthFailures failures) = _Error;
}
