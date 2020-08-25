import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:boticario/auth/domain/converter/auth_converter.dart';
import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:boticario/auth/domain/usecases/login_use_case.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'login_form_event.dart';
part 'login_form_state.dart';
part 'login_form_bloc.freezed.dart';

@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final LoginUseCase loginUseCase;

  LoginFormBloc(this.loginUseCase) : super(_Initial());

  @override
  Stream<LoginFormState> mapEventToState(
    LoginFormEvent event,
  ) async* {
    yield* event.map(
      onSubmit: (e) => _mapEventToSubmit(e.email, e.password),
      onChangeInput: (e) async* {
        yield LoginFormState.initial();
      },
    );
  }

  Stream<LoginFormState> _mapEventToSubmit(
      String email, String password) async* {
    yield LoginFormState.loading();
    final result = await loginUseCase(
      email: email,
      password: password,
    );

    yield* result.fold(
      (l) async* {
        yield LoginFormState.error(l);
      },
      (user) async* {
        yield LoginFormState.success(user);
      },
    );
  }
}
