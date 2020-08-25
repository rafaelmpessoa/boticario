import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:boticario/auth/domain/converter/auth_converter.dart';
import 'package:boticario/auth/domain/usecases/logout_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

@injectable
class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final LogoutUseCase logoutUseCase;
  LogoutBloc(this.logoutUseCase) : super(_Initial());

  @override
  Stream<LogoutState> mapEventToState(
    LogoutEvent event,
  ) async* {
    yield* event.map(
      onLogout: (e) => _mapEventToLogout(),
    );
  }

  Stream<LogoutState> _mapEventToLogout() async* {
    yield LogoutState.loading();
    final result = await logoutUseCase();

    yield* result.fold(
      (l) async* {
        yield LogoutState.error(
          AuthConverter.authFailureInString(l),
        );
      },
      (r) async* {
        yield LogoutState.success();
      },
    );
  }
}
