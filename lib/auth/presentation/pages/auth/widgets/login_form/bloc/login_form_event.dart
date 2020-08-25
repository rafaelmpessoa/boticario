part of 'login_form_bloc.dart';

@freezed
abstract class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.onSubmit({
    @required String email,
    @required String password,
  }) = _OnSubmit;
  const factory LoginFormEvent.onChangeInput() = _OnChangeInput;
}
