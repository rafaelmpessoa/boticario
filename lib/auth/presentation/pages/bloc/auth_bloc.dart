import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:boticario/auth/domain/usecases/is_authenticated_use_case.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/usecases/get_current_user_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IsAuthenticatedUseCase isAuthenticatedUseCase;
  final GetCurrentUserUseCase getCurrentUserUseCase;
  AuthBloc(this.isAuthenticatedUseCase, this.getCurrentUserUseCase)
      : super(_Initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield AuthState.loading();

    final result = await isAuthenticatedUseCase();
    yield* result.fold((l) async* {
      yield AuthState.unauthenticated();
    }, (isAuth) async* {
      if (isAuth) {
        yield* _getCurrentUser();
        return;
      }
      yield AuthState.unauthenticated();
    });
  }

  Stream<AuthState> _getCurrentUser() async* {
    final result = await getCurrentUserUseCase();
    yield* result.fold(
      (l) async* {
        yield AuthState.unauthenticated();
      },
      (user) async* {
        yield AuthState.authenticated(user);
      },
    );
  }
}
