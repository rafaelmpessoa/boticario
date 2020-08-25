import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:boticario/user/domain/converter/user_converter.dart';
import 'package:boticario/user/domain/entities/user_post_list_item.dart';
import 'package:boticario/user/domain/usecases/get_posts_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'user_post_list_event.dart';
part 'user_post_list_state.dart';
part 'user_post_list_bloc.freezed.dart';

@injectable
class UserPostListBloc extends Bloc<UserPostListEvent, UserPostListState> {
  final GetPostsUseCase getPostsUseCase;
  UserPostListBloc(this.getPostsUseCase) : super(_Initial());

  @override
  Stream<UserPostListState> mapEventToState(
    UserPostListEvent event,
  ) async* {
    yield* event.map(
      started: (e) => _mapEventToLoadUserPosts(event),
    );
  }

  Stream<UserPostListState> _mapEventToLoadUserPosts(
      UserPostListEvent event) async* {
    yield UserPostListState.loading();

    final result = await getPostsUseCase();

    yield* result.fold(
      (l) async* {
        yield UserPostListState.error(
          UserConverter.userFailuresInString(l),
          event,
        );
      },
      (r) async* {
        yield UserPostListState.loaded(
          UserConverter.listUserInListUserPostListItem(r),
        );
      },
    );
  }
}
