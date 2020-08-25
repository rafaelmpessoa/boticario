// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_post_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserPostItemEventTearOff {
  const _$UserPostItemEventTearOff();

// ignore: unused_element
  _OnRemove onRemove(String id) {
    return _OnRemove(
      id,
    );
  }
}

// ignore: unused_element
const $UserPostItemEvent = _$UserPostItemEventTearOff();

mixin _$UserPostItemEvent {
  String get id;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onRemove(String id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onRemove(String id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onRemove(_OnRemove value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onRemove(_OnRemove value),
    @required Result orElse(),
  });

  $UserPostItemEventCopyWith<UserPostItemEvent> get copyWith;
}

abstract class $UserPostItemEventCopyWith<$Res> {
  factory $UserPostItemEventCopyWith(
          UserPostItemEvent value, $Res Function(UserPostItemEvent) then) =
      _$UserPostItemEventCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$UserPostItemEventCopyWithImpl<$Res>
    implements $UserPostItemEventCopyWith<$Res> {
  _$UserPostItemEventCopyWithImpl(this._value, this._then);

  final UserPostItemEvent _value;
  // ignore: unused_field
  final $Res Function(UserPostItemEvent) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

abstract class _$OnRemoveCopyWith<$Res>
    implements $UserPostItemEventCopyWith<$Res> {
  factory _$OnRemoveCopyWith(_OnRemove value, $Res Function(_OnRemove) then) =
      __$OnRemoveCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

class __$OnRemoveCopyWithImpl<$Res>
    extends _$UserPostItemEventCopyWithImpl<$Res>
    implements _$OnRemoveCopyWith<$Res> {
  __$OnRemoveCopyWithImpl(_OnRemove _value, $Res Function(_OnRemove) _then)
      : super(_value, (v) => _then(v as _OnRemove));

  @override
  _OnRemove get _value => super._value as _OnRemove;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_OnRemove(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$_OnRemove implements _OnRemove {
  const _$_OnRemove(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'UserPostItemEvent.onRemove(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnRemove &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$OnRemoveCopyWith<_OnRemove> get copyWith =>
      __$OnRemoveCopyWithImpl<_OnRemove>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onRemove(String id),
  }) {
    assert(onRemove != null);
    return onRemove(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onRemove(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onRemove != null) {
      return onRemove(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onRemove(_OnRemove value),
  }) {
    assert(onRemove != null);
    return onRemove(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onRemove(_OnRemove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onRemove != null) {
      return onRemove(this);
    }
    return orElse();
  }
}

abstract class _OnRemove implements UserPostItemEvent {
  const factory _OnRemove(String id) = _$_OnRemove;

  @override
  String get id;
  @override
  _$OnRemoveCopyWith<_OnRemove> get copyWith;
}

class _$UserPostItemStateTearOff {
  const _$UserPostItemStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _SuccessRemove successRemove() {
    return const _SuccessRemove();
  }

// ignore: unused_element
  _SuccessEdit successEdit() {
    return const _SuccessEdit();
  }

// ignore: unused_element
  _Error error(String error) {
    return _Error(
      error,
    );
  }
}

// ignore: unused_element
const $UserPostItemState = _$UserPostItemStateTearOff();

mixin _$UserPostItemState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result successRemove(),
    @required Result successEdit(),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result successRemove(),
    Result successEdit(),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result successRemove(_SuccessRemove value),
    @required Result successEdit(_SuccessEdit value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result successRemove(_SuccessRemove value),
    Result successEdit(_SuccessEdit value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

abstract class $UserPostItemStateCopyWith<$Res> {
  factory $UserPostItemStateCopyWith(
          UserPostItemState value, $Res Function(UserPostItemState) then) =
      _$UserPostItemStateCopyWithImpl<$Res>;
}

class _$UserPostItemStateCopyWithImpl<$Res>
    implements $UserPostItemStateCopyWith<$Res> {
  _$UserPostItemStateCopyWithImpl(this._value, this._then);

  final UserPostItemState _value;
  // ignore: unused_field
  final $Res Function(UserPostItemState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$UserPostItemStateCopyWithImpl<$Res>
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
    return 'UserPostItemState.initial()';
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
    @required Result successRemove(),
    @required Result successEdit(),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successRemove != null);
    assert(successEdit != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result successRemove(),
    Result successEdit(),
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
    @required Result successRemove(_SuccessRemove value),
    @required Result successEdit(_SuccessEdit value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successRemove != null);
    assert(successEdit != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result successRemove(_SuccessRemove value),
    Result successEdit(_SuccessEdit value),
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

abstract class _Initial implements UserPostItemState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$UserPostItemStateCopyWithImpl<$Res>
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
    return 'UserPostItemState.loading()';
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
    @required Result successRemove(),
    @required Result successEdit(),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successRemove != null);
    assert(successEdit != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result successRemove(),
    Result successEdit(),
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
    @required Result successRemove(_SuccessRemove value),
    @required Result successEdit(_SuccessEdit value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successRemove != null);
    assert(successEdit != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result successRemove(_SuccessRemove value),
    Result successEdit(_SuccessEdit value),
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

abstract class _Loading implements UserPostItemState {
  const factory _Loading() = _$_Loading;
}

abstract class _$SuccessRemoveCopyWith<$Res> {
  factory _$SuccessRemoveCopyWith(
          _SuccessRemove value, $Res Function(_SuccessRemove) then) =
      __$SuccessRemoveCopyWithImpl<$Res>;
}

class __$SuccessRemoveCopyWithImpl<$Res>
    extends _$UserPostItemStateCopyWithImpl<$Res>
    implements _$SuccessRemoveCopyWith<$Res> {
  __$SuccessRemoveCopyWithImpl(
      _SuccessRemove _value, $Res Function(_SuccessRemove) _then)
      : super(_value, (v) => _then(v as _SuccessRemove));

  @override
  _SuccessRemove get _value => super._value as _SuccessRemove;
}

class _$_SuccessRemove implements _SuccessRemove {
  const _$_SuccessRemove();

  @override
  String toString() {
    return 'UserPostItemState.successRemove()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SuccessRemove);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result successRemove(),
    @required Result successEdit(),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successRemove != null);
    assert(successEdit != null);
    assert(error != null);
    return successRemove();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result successRemove(),
    Result successEdit(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successRemove != null) {
      return successRemove();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result successRemove(_SuccessRemove value),
    @required Result successEdit(_SuccessEdit value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successRemove != null);
    assert(successEdit != null);
    assert(error != null);
    return successRemove(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result successRemove(_SuccessRemove value),
    Result successEdit(_SuccessEdit value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successRemove != null) {
      return successRemove(this);
    }
    return orElse();
  }
}

abstract class _SuccessRemove implements UserPostItemState {
  const factory _SuccessRemove() = _$_SuccessRemove;
}

abstract class _$SuccessEditCopyWith<$Res> {
  factory _$SuccessEditCopyWith(
          _SuccessEdit value, $Res Function(_SuccessEdit) then) =
      __$SuccessEditCopyWithImpl<$Res>;
}

class __$SuccessEditCopyWithImpl<$Res>
    extends _$UserPostItemStateCopyWithImpl<$Res>
    implements _$SuccessEditCopyWith<$Res> {
  __$SuccessEditCopyWithImpl(
      _SuccessEdit _value, $Res Function(_SuccessEdit) _then)
      : super(_value, (v) => _then(v as _SuccessEdit));

  @override
  _SuccessEdit get _value => super._value as _SuccessEdit;
}

class _$_SuccessEdit implements _SuccessEdit {
  const _$_SuccessEdit();

  @override
  String toString() {
    return 'UserPostItemState.successEdit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SuccessEdit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result successRemove(),
    @required Result successEdit(),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successRemove != null);
    assert(successEdit != null);
    assert(error != null);
    return successEdit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result successRemove(),
    Result successEdit(),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successEdit != null) {
      return successEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result successRemove(_SuccessRemove value),
    @required Result successEdit(_SuccessEdit value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successRemove != null);
    assert(successEdit != null);
    assert(error != null);
    return successEdit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result successRemove(_SuccessRemove value),
    Result successEdit(_SuccessEdit value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successEdit != null) {
      return successEdit(this);
    }
    return orElse();
  }
}

abstract class _SuccessEdit implements UserPostItemState {
  const factory _SuccessEdit() = _$_SuccessEdit;
}

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class __$ErrorCopyWithImpl<$Res> extends _$UserPostItemStateCopyWithImpl<$Res>
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
    return 'UserPostItemState.error(error: $error)';
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
    @required Result successRemove(),
    @required Result successEdit(),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successRemove != null);
    assert(successEdit != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result successRemove(),
    Result successEdit(),
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
    @required Result successRemove(_SuccessRemove value),
    @required Result successEdit(_SuccessEdit value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(successRemove != null);
    assert(successEdit != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result successRemove(_SuccessRemove value),
    Result successEdit(_SuccessEdit value),
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

abstract class _Error implements UserPostItemState {
  const factory _Error(String error) = _$_Error;

  String get error;
  _$ErrorCopyWith<_Error> get copyWith;
}
