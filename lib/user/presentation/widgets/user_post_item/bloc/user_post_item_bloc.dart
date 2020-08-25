import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:boticario/user/domain/converter/user_converter.dart';
import 'package:boticario/user/domain/usecases/remove_user_post_use_case.dart';
import 'package:boticario/user/domain/usecases/update_user_post_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'user_post_item_event.dart';
part 'user_post_item_state.dart';
part 'user_post_item_bloc.freezed.dart';

@injectable
class UserPostItemBloc extends Bloc<UserPostItemEvent, UserPostItemState> {
  final UpdateUserPostUseCase updateUserPostUseCase;
  final RemoveUserPostUseCase removeUserPostUseCase;
  UserPostItemBloc(this.updateUserPostUseCase, this.removeUserPostUseCase)
      : super(_Initial());

  @override
  Stream<UserPostItemState> mapEventToState(
    UserPostItemEvent event,
  ) async* {
    yield* event.map(
      onRemove: (e) => _mapEventToRemove(e.id),
    );
  }

  Stream<UserPostItemState> _mapEventToRemove(String id) async* {
    yield UserPostItemState.loading();
    final result = await removeUserPostUseCase(id);

    yield* result.fold(
      (l) async* {
        yield UserPostItemState.error(UserConverter.userFailuresInString(l));
      },
      (r) async* {
        yield UserPostItemState.successRemove();
      },
    );
  }
}
