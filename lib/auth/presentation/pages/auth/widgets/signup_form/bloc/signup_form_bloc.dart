import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:boticario/user/domain/converter/user_converter.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/usecases/create_user_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'signup_form_event.dart';
part 'signup_form_state.dart';
part 'signup_form_bloc.freezed.dart';

@injectable
class SignupFormBloc extends Bloc<SignupFormEvent, SignupFormState> {
  final CreateUserUseCase createUserUseCase;
  SignupFormBloc(this.createUserUseCase) : super(_Initial());

  @override
  Stream<SignupFormState> mapEventToState(
    SignupFormEvent event,
  ) async* {
    yield* event.map(
      onCreateAccount: (e) => _mapEventToCreateAccount(e.user, e.password),
    );
  }

  Stream<SignupFormState> _mapEventToCreateAccount(
      User user, String password) async* {
    yield SignupFormState.loading();

    final result = await createUserUseCase(user: user, password: password);

    yield* result.fold(
      (l) async* {
        yield SignupFormState.error(UserConverter.userFailuresInString(l));
      },
      (r) async* {
        yield SignupFormState.success();
      },
    );
  }
}
