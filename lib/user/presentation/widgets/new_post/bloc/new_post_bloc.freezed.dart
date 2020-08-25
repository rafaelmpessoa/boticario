// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'new_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewPostEventTearOff {
  const _$NewPostEventTearOff();

// ignore: unused_element
  _OnSend onSend(String post) {
    return _OnSend(
      post,
    );
  }

// ignore: unused_element
  _OnEdit onEdit(String id, String post) {
    return _OnEdit(
      id,
      post,
    );
  }
}

// ignore: unused_element
const $NewPostEvent = _$NewPostEventTearOff();

mixin _$NewPostEvent {
  String get post;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onSend(String post),
    @required Result onEdit(String id, String post),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSend(String post),
    Result onEdit(String id, String post),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSend(_OnSend value),
    @required Result onEdit(_OnEdit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSend(_OnSend value),
    Result onEdit(_OnEdit value),
    @required Result orElse(),
  });

  $NewPostEventCopyWith<NewPostEvent> get copyWith;
}

abstract class $NewPostEventCopyWith<$Res> {
  factory $NewPostEventCopyWith(
          NewPostEvent value, $Res Function(NewPostEvent) then) =
      _$NewPostEventCopyWithImpl<$Res>;
  $Res call({String post});
}

class _$NewPostEventCopyWithImpl<$Res> implements $NewPostEventCopyWith<$Res> {
  _$NewPostEventCopyWithImpl(this._value, this._then);

  final NewPostEvent _value;
  // ignore: unused_field
  final $Res Function(NewPostEvent) _then;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed ? _value.post : post as String,
    ));
  }
}

abstract class _$OnSendCopyWith<$Res> implements $NewPostEventCopyWith<$Res> {
  factory _$OnSendCopyWith(_OnSend value, $Res Function(_OnSend) then) =
      __$OnSendCopyWithImpl<$Res>;
  @override
  $Res call({String post});
}

class __$OnSendCopyWithImpl<$Res> extends _$NewPostEventCopyWithImpl<$Res>
    implements _$OnSendCopyWith<$Res> {
  __$OnSendCopyWithImpl(_OnSend _value, $Res Function(_OnSend) _then)
      : super(_value, (v) => _then(v as _OnSend));

  @override
  _OnSend get _value => super._value as _OnSend;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_OnSend(
      post == freezed ? _value.post : post as String,
    ));
  }
}

class _$_OnSend implements _OnSend {
  const _$_OnSend(this.post) : assert(post != null);

  @override
  final String post;

  @override
  String toString() {
    return 'NewPostEvent.onSend(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnSend &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  _$OnSendCopyWith<_OnSend> get copyWith =>
      __$OnSendCopyWithImpl<_OnSend>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onSend(String post),
    @required Result onEdit(String id, String post),
  }) {
    assert(onSend != null);
    assert(onEdit != null);
    return onSend(post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSend(String post),
    Result onEdit(String id, String post),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSend != null) {
      return onSend(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSend(_OnSend value),
    @required Result onEdit(_OnEdit value),
  }) {
    assert(onSend != null);
    assert(onEdit != null);
    return onSend(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSend(_OnSend value),
    Result onEdit(_OnEdit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSend != null) {
      return onSend(this);
    }
    return orElse();
  }
}

abstract class _OnSend implements NewPostEvent {
  const factory _OnSend(String post) = _$_OnSend;

  @override
  String get post;
  @override
  _$OnSendCopyWith<_OnSend> get copyWith;
}

abstract class _$OnEditCopyWith<$Res> implements $NewPostEventCopyWith<$Res> {
  factory _$OnEditCopyWith(_OnEdit value, $Res Function(_OnEdit) then) =
      __$OnEditCopyWithImpl<$Res>;
  @override
  $Res call({String id, String post});
}

class __$OnEditCopyWithImpl<$Res> extends _$NewPostEventCopyWithImpl<$Res>
    implements _$OnEditCopyWith<$Res> {
  __$OnEditCopyWithImpl(_OnEdit _value, $Res Function(_OnEdit) _then)
      : super(_value, (v) => _then(v as _OnEdit));

  @override
  _OnEdit get _value => super._value as _OnEdit;

  @override
  $Res call({
    Object id = freezed,
    Object post = freezed,
  }) {
    return _then(_OnEdit(
      id == freezed ? _value.id : id as String,
      post == freezed ? _value.post : post as String,
    ));
  }
}

class _$_OnEdit implements _OnEdit {
  const _$_OnEdit(this.id, this.post)
      : assert(id != null),
        assert(post != null);

  @override
  final String id;
  @override
  final String post;

  @override
  String toString() {
    return 'NewPostEvent.onEdit(id: $id, post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnEdit &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(post);

  @override
  _$OnEditCopyWith<_OnEdit> get copyWith =>
      __$OnEditCopyWithImpl<_OnEdit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onSend(String post),
    @required Result onEdit(String id, String post),
  }) {
    assert(onSend != null);
    assert(onEdit != null);
    return onEdit(id, post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSend(String post),
    Result onEdit(String id, String post),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onEdit != null) {
      return onEdit(id, post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSend(_OnSend value),
    @required Result onEdit(_OnEdit value),
  }) {
    assert(onSend != null);
    assert(onEdit != null);
    return onEdit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSend(_OnSend value),
    Result onEdit(_OnEdit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onEdit != null) {
      return onEdit(this);
    }
    return orElse();
  }
}

abstract class _OnEdit implements NewPostEvent {
  const factory _OnEdit(String id, String post) = _$_OnEdit;

  String get id;
  @override
  String get post;
  @override
  _$OnEditCopyWith<_OnEdit> get copyWith;
}

class _$NewPostStateTearOff {
  const _$NewPostStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(UserPost post) {
    return _Success(
      post,
    );
  }

// ignore: unused_element
  _Error error(String error) {
    return _Error(
      error,
    );
  }
}

// ignore: unused_element
const $NewPostState = _$NewPostStateTearOff();

mixin _$NewPostState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(UserPost post),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(UserPost post),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

abstract class $NewPostStateCopyWith<$Res> {
  factory $NewPostStateCopyWith(
          NewPostState value, $Res Function(NewPostState) then) =
      _$NewPostStateCopyWithImpl<$Res>;
}

class _$NewPostStateCopyWithImpl<$Res> implements $NewPostStateCopyWith<$Res> {
  _$NewPostStateCopyWithImpl(this._value, this._then);

  final NewPostState _value;
  // ignore: unused_field
  final $Res Function(NewPostState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$NewPostStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NewPostState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(UserPost post),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(UserPost post),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NewPostState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$NewPostStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NewPostState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(UserPost post),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(UserPost post),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NewPostState {
  const factory _Loading() = _$_Loading;
}

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({UserPost post});

  $UserPostCopyWith<$Res> get post;
}

class __$SuccessCopyWithImpl<$Res> extends _$NewPostStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_Success(
      post == freezed ? _value.post : post as UserPost,
    ));
  }

  @override
  $UserPostCopyWith<$Res> get post {
    if (_value.post == null) {
      return null;
    }
    return $UserPostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

class _$_Success implements _Success {
  const _$_Success(this.post) : assert(post != null);

  @override
  final UserPost post;

  @override
  String toString() {
    return 'NewPostState.success(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(UserPost post),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(UserPost post),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements NewPostState {
  const factory _Success(UserPost post) = _$_Success;

  UserPost get post;
  _$SuccessCopyWith<_Success> get copyWith;
}

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class __$ErrorCopyWithImpl<$Res> extends _$NewPostStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_Error(
      error == freezed ? _value.error : error as String,
    ));
  }
}

class _$_Error implements _Error {
  const _$_Error(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'NewPostState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(UserPost post),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(UserPost post),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NewPostState {
  const factory _Error(String error) = _$_Error;

  String get error;
  _$ErrorCopyWith<_Error> get copyWith;
}
