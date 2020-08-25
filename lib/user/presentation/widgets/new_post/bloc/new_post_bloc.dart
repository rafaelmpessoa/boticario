import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:boticario/user/domain/converter/user_converter.dart';
import 'package:boticario/user/domain/entities/user_post.dart';
import 'package:boticario/user/domain/usecases/create_user_post_use_case.dart';
import 'package:boticario/user/domain/usecases/update_user_post_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'new_post_event.dart';
part 'new_post_state.dart';
part 'new_post_bloc.freezed.dart';

@injectable
class NewPostBloc extends Bloc<NewPostEvent, NewPostState> {
  final CreateUserPostUseCase createUserPostUseCase;
  final UpdateUserPostUseCase updateUserPostUseCase;
  NewPostBloc(this.createUserPostUseCase, this.updateUserPostUseCase)
      : super(_Initial());

  @override
  Stream<NewPostState> mapEventToState(
    NewPostEvent event,
  ) async* {
    yield* event.map(
      onSend: (e) => _mapEventToSend(e.post),
      onEdit: (e) => _mapEventToEdit(e.id, e.post),
    );
  }

  Stream<NewPostState> _mapEventToSend(String post) async* {
    yield NewPostState.loading();

    final result = await createUserPostUseCase(
      UserPost(
        post: post,
      ),
    );

    yield* result.fold(
      (l) async* {
        yield NewPostState.error(UserConverter.userFailuresInString(l));
      },
      (r) async* {
        yield NewPostState.success(r);
      },
    );
  }

  Stream<NewPostState> _mapEventToEdit(String id, String post) async* {
    yield NewPostState.loading();

    final result = await updateUserPostUseCase(postId: id, post: post);

    yield* result.fold(
      (l) async* {
        yield NewPostState.error(UserConverter.userFailuresInString(l));
      },
      (r) async* {
        yield NewPostState.success(r);
      },
    );
  }
}
